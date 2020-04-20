# Write a minitest assertion that will fail if the value.odd? is not true.

require 'minitest/autorun'

assert_equal('xyz', value.downcase)

assert_nil(value)

# Write a minitest assertion that will fail if the Array list is not empty.

assert(list.empty?)

# Write a minitest assertion that will fail if the 'xyz' is not in the Array list.

array_includes(list, 'xyz')

# # Write a minitest assertion that will fail unless employee.hire raises 
# a NoExperienceError exception.

assert_raises(NoExperienceError {employee.hire})

# Write a minitest assertion that will fail if value is not an instance of the Numeric class exactly. 
# value may not be an instance of one of Numeric's superclasses.

assert_instance_of(Numeric, value)

# Write a unit test that will fail if list and the return value of list.process are different objects.

assert_equal(list, list.process)

# Write a unit test that will fail if 'xyz' is one of the elements in the Array list:

refute_includes(list, 'xyz')