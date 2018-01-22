# Message definition to communicate a location within the shop floor.

# Pre-defined constants to code the type of location to scan
int8 UNKNOWN=0  # default values does not code a valid location
int8 RACK=1  # a group of shelves
int8 SHELF=2  # a group of shelf floors
int8 SHELF_FLOOR=3  # a group of facings
int8 FACING=4  # a single facing

# Location type, fill with one of the above constants.
int8 type

# Flag to toggle, whether loc_id or product_id are used to identify
# this location.
# Example: For queries like 'Scan rack-42' set 'use_loc_id=True'.
# Example: For queries like 'Scan rack with product XY' set 'use_loc_id=False'.
bool use_loc_id

# Unique ID of location individuals, as defined in semantic store maps.
string loc_id

# Unique of product classes, as defined in semantic store maps.
string product_id