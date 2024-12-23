// This object is the one that initialize every other Controller

if !layer_exists("Controllers") layer_create(0, "Controllers")

// Internationalization (i18n)
instance_create_layer(0, 0, "Controllers", obj_i18n_manager);

// Init input manager
instance_create_layer(0, 0, "Controllers", obj_input_manager);

// Init audio manager
instance_create_layer(0, 0, "Controllers", obj_audio_manager);

instance_create_layer(x, y, "Controllers", obj_mover, {target: rm_title_screen})