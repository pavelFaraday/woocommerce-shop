<?php

/**
 * The plugin bootstrap file
 *
 * This file is read by WordPress to generate the plugin information in the plugin
 * admin area. This file also includes all of the dependencies used by the plugin,
 * registers the activation and deactivation functions, and defines a function
 * that starts the plugin.
 *
 * @link              https://www.tplugins.com/
 * @since             1.0.0
 * @package           TP_Product_Image_Flipper_For_Woocommerce
 *
 * @wordpress-plugin
 * Plugin Name:       TP Product Image Flipper for Woocommerce
 * Plugin URI:        https://www.tplugins.com/
 * Description:       Flip between 2 images on product shop/category page.
 * Version:           1.0.7
 * Requires at least: 4.2
 * Requires PHP:      5.6
 * Author:            TP Plugins
 * License:           GPL-2.0+
 * License URI:       http://www.gnu.org/licenses/gpl-2.0.txt
 * Text Domain:       tp-product-image-flipper-for-woocommerce
 * Domain Path:       /languages
 * WC requires at least: 3.0
 * WC tested up to:      6.0.0
 */

// If this file is called directly, abort.
if ( ! defined( 'WPINC' ) ) {
	die;
}

/**
 * Currently plugin version.
 * Start at version 1.0.0 and use SemVer - https://semver.org
 * Rename this for your plugin and update it as you release new versions.
 */
define( 'TP_PRODUCT_IMAGE_FLIPPER_FOR_WOOCOMMERCE_VERSION', '1.0.7' );

/**
 * Check if WooCommerce is active
 */
if(in_array('woocommerce/woocommerce.php', apply_filters('active_plugins', get_option('active_plugins')))) {
    //define( 'TP_PRODUCT_IMAGE_FLIPPER_FOR_WOOCOMMERCE_VERSION', '1.0.0' );
    $plugin_name = 'tp-product-image-flipper-for-woocommerce';

    add_action( 'wp_enqueue_scripts', 'tp_product_image_flipper_front_scripts' );
    function tp_product_image_flipper_front_scripts() {
        //wp_enqueue_style( $plugin_name, plugin_dir_url( __FILE__ ) . 'css/tp-product-image-flipper-for-woocommerce.css', array(), TP_PRODUCT_IMAGE_FLIPPER_FOR_WOOCOMMERCE_VERSION, 'all' );
        wp_enqueue_style( 'tp-product-image-flipper-for-woocommerce', plugins_url( '/css/tp-product-image-flipper-for-woocommerce.css' , __FILE__ ) );
    }
    
    add_action( 'init' , 'tp_remove_action' , 15 );
    function tp_remove_action() {
        remove_action( 'woocommerce_before_shop_loop_item_title', 'woocommerce_template_loop_product_thumbnail', 10);
    }

    // remove_action( 'woocommerce_before_shop_loop_item_title', 'woocommerce_template_loop_product_thumbnail', 10);
    add_action( 'woocommerce_before_shop_loop_item_title', 'tp_create_flipper_images', 10);

    function tp_create_flipper_images() {
        global $post, $woocommerce ,$product;
        $get_gallery_image_ids = $product->get_gallery_image_ids();
        $image_size = tppif_image_size();
        $image_srcset_sizes = tppif_image_srcset_sizes();
        //wp_dbug($image_size);
        //wp_dbug($get_gallery_image_ids);
        $get_image_id  = $product->get_image_id();

        //$attachment_id = get_post_thumbnail_id( $post->ID );
        $image_url_top = wp_get_attachment_image_url( $get_image_id, $image_size );
        $image_url_top_srcset = wp_get_attachment_image_srcset( $get_image_id, $image_size );
        //$image_url_top = get_the_post_thumbnail_url($post->ID, $image_size);
        $placeholder_img = wc_placeholder_img_src($image_size);
        //wp_dbug($placeholder_img);
        if($get_image_id){

            $image_top_alt = get_post_meta($get_image_id, '_wp_attachment_image_alt', TRUE);
            if(!$image_top_alt){
                $image_top_alt = $product->get_name();
            }

            if($get_gallery_image_ids){

                $image_bottom_alt = get_post_meta($get_gallery_image_ids[0], '_wp_attachment_image_alt', TRUE);
                if(!$image_bottom_alt){
                    $image_bottom_alt = $image_top_alt;
                }

                $output = '<div class="tp-image-wrapper">';
                    //$post->post_title;
                    //$image_url_bottom = wp_get_attachment_image_src($get_gallery_image_ids[0], $image_size );
                    $image_url_bottom = wp_get_attachment_image_url( $get_gallery_image_ids[0], $image_size );
                    $image_url_bottom_srcset = wp_get_attachment_image_srcset( $get_gallery_image_ids[0], $image_size );

                    // $output .= '<img class="tp-image" src="'.$image_url_top.'" alt="'.$image_top_alt.'" />';
                    // $output .= '<img class="tp-image-hover" src="'.$image_url_bottom[0].'" alt="'.$image_bottom_alt.'" />';

                    $output .= '<img class="tp-image" src="'.esc_url($image_url_top).'" srcset="'.esc_attr( $image_url_top_srcset ).'" sizes="'.$image_srcset_sizes.'" alt="'.$image_top_alt.'">';
                    $output .= '<img class="tp-image-hover" src="'.esc_url($image_url_bottom).'" srcset="'.esc_attr( $image_url_bottom_srcset ).'" sizes="'.$image_srcset_sizes.'" alt="'.$image_bottom_alt.'">';
                            
                $output .= '</div>';
                
            }
            else{
                //$output = '<div class="tp-image-wrapper"><img class="image" src="'.$image_url_top.'" alt="'.$image_top_alt.'" /></div>';
                $output = '<div class="tp-image-wrapper"><img class="image" src="'.esc_url($image_url_top).'" srcset="'.esc_attr( $image_url_top_srcset ).'" sizes="'.$image_srcset_sizes.'" alt="'.$image_top_alt.'"></div>';
            }

        }
        else{
            $output = '<div class="tp-image-wrapper"><img class="image" src="'.$placeholder_img.'" /></div>';
        }

        echo $output;
    }

    function tppif_image_size() {
        $default_size = 'woocommerce_thumbnail'; // 'thumbnail', 'medium', 'medium_large', 'large' 
    
        /**
        * Filters the list of fliper image size.
        *
        * @since 1.0.6
        *
        * @param string[] $default_size An image size name. Defaults
        * are 'woocommerce_thumbnail','thumbnail', 'medium', 'medium_large', 'large'.
        */
        return apply_filters( 'tppif_image_size', $default_size );
    }

    function tppif_image_srcset_sizes() {
        $default_sizes = '(max-width: 360px) 100vw, 360px';
    
        /**
        * Filters the list of fliper image size.
        *
        * @since 1.0.6
        *
        * @param string[] $default_size An image size name. Defaults
        * are (max-width: 360px) 100vw, 360px.
        */
        return apply_filters( 'tppif_image_srcset_sizes', $default_sizes );
    }

}