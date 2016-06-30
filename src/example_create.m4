HEAD([example_create], [creates an example])
SYNO([example_t], [example_create], [const char*, name], [int, flags])
DESC([Creates a new example object with the specified name and flags.])
RETV([An example_t handle to the newly created example])
ALSO([example_destroy, example_frob])
FOOT
