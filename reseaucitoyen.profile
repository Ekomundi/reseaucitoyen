<?php
/**
 * @file
 * Enables modules and site configuration for a reseaucitoyen site installation.
 */

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function reseaucitoyen_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
  $form['site_information']['site_name']['#default_value'] = $_SERVER['SERVER_NAME'];
}



/**
 * Implements hook_apps_servers_info.
 */
require_once ("profiles/openatrium/openatrium.profile");
function reseaucitoyen_apps_servers_info() {
  return openatrium_apps_servers_info();
}
