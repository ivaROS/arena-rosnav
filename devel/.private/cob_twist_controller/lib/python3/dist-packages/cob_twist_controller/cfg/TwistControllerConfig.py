## *********************************************************
##
## File autogenerated for the cob_twist_controller package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'name': 'Default', 'type': '', 'state': True, 'cstate': 'true', 'id': 0, 'parent': 0, 'parameters': [], 'groups': [{'name': 'Damping_and_Truncation', 'type': 'damping_truncation', 'state': True, 'cstate': 'true', 'id': 1, 'parent': 0, 'parameters': [{'name': 'numerical_filtering', 'type': 'bool', 'default': False, 'level': 0, 'description': 'Numerical Filtering yes/no', 'min': False, 'max': True, 'srcline': 50, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'bool', 'cconsttype': 'const bool'}, {'name': 'damping_method', 'type': 'int', 'default': 4, 'level': 0, 'description': 'The damping method to use.', 'min': -2147483648, 'max': 2147483647, 'srcline': 51, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': "{'enum': [{'name': 'NO_DAMPING', 'type': 'int', 'value': 0, 'srcline': 8, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'description': 'No damping means a damping factor of 0.0.', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'CONSTANT', 'type': 'int', 'value': 1, 'srcline': 9, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'description': 'Constant damping factor given by parameter damping_factor.', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'MANIPULABILITY', 'type': 'int', 'value': 2, 'srcline': 10, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'description': 'Damping factor calculation based on the manipulability measure.', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'LEAST_SINGULAR_VALUE', 'type': 'int', 'value': 3, 'srcline': 11, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'description': 'Damping factor calculation based on the least singular value', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'SIGMOID', 'type': 'int', 'value': 4, 'srcline': 12, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'description': 'Damping factor calculation based on sigmoid functions', 'ctype': 'int', 'cconsttype': 'const int'}], 'enum_description': 'enum types for the damping_methods'}", 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'damping_factor', 'type': 'double', 'default': 0.01, 'level': 0, 'description': 'The constant damping_factor (used in CONSTANT)', 'min': 0.0, 'max': 1.0, 'srcline': 52, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'lambda_max', 'type': 'double', 'default': 0.001, 'level': 0, 'description': 'Value for maximum damping_factor (used in MANIPULABILITY/LSV/SIGMOID)', 'min': 0.0, 'max': 10.0, 'srcline': 53, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'w_threshold', 'type': 'double', 'default': 0.001, 'level': 0, 'description': 'Value for manipulability threshold (used in MANIPULABILITY/SIGMOID)', 'min': 0.0, 'max': 0.1, 'srcline': 54, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'beta', 'type': 'double', 'default': 0.005, 'level': 0, 'description': 'Beta for Low Isotropic Damping', 'min': 0.0, 'max': 1.0, 'srcline': 55, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'slope_damping', 'type': 'double', 'default': 0.05, 'level': 0, 'description': 'Value for the activation gradient (used in SIGMOID)', 'min': 0.001, 'max': 0.1, 'srcline': 56, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'eps_damping', 'type': 'double', 'default': 0.003, 'level': 0, 'description': 'Value for least singular value damping', 'min': 0.0, 'max': 1.0, 'srcline': 57, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'eps_truncation', 'type': 'double', 'default': 0.001, 'level': 0, 'description': 'Value for singular value threshold (used for truncation: sing. value < eps)', 'min': 0.0, 'max': 1.0, 'srcline': 58, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}], 'groups': [], 'srcline': 124, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'class': 'DEFAULT::DAMPING_AND_TRUNCATION', 'parentclass': 'DEFAULT', 'parentname': 'Default', 'field': 'DEFAULT::damping_and_truncation', 'upper': 'DAMPING_AND_TRUNCATION', 'lower': 'damping_and_truncation'}, {'name': 'Solver_and_Constraints', 'type': 'solver_constraints', 'state': True, 'cstate': 'true', 'id': 2, 'parent': 0, 'parameters': [{'name': 'solver', 'type': 'int', 'default': 1, 'level': 0, 'description': 'The solver to use (edited via an enum)', 'min': -2147483648, 'max': 2147483647, 'srcline': 62, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': "{'enum': [{'name': 'DEFAULT_SOLVER', 'type': 'int', 'value': 0, 'srcline': 16, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'description': 'No constraints active', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'WLN', 'type': 'int', 'value': 1, 'srcline': 17, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'description': 'Weighted-least-norm base, with identity as weighting matrix (equal to None)', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'GPM', 'type': 'int', 'value': 2, 'srcline': 18, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'description': 'Gradient-projection-method', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'STACK_OF_TASKS', 'type': 'int', 'value': 3, 'srcline': 19, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'description': 'Task Priority Strategy for all with dynamic resadjust of GPM and task ...', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'TASK_2ND_PRIO', 'type': 'int', 'value': 4, 'srcline': 20, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'description': 'Task Priority Strategy for obstacle avoidance ...', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'UNIFIED_JLA_SA', 'type': 'int', 'value': 5, 'srcline': 21, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'description': 'Inv Kinematics solver based on unified weighted least norm and sigmoid weighting functions', 'ctype': 'int', 'cconsttype': 'const int'}], 'enum_description': 'enum types for the solvers'}", 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'priority', 'type': 'int', 'default': 500, 'level': 0, 'description': 'Priority for the main end-effector task (important for task processing; 0 = highest prio)', 'min': 0, 'max': 1000, 'srcline': 63, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'k_H', 'type': 'double', 'default': 1.0, 'level': 0, 'description': 'Self-motion factor for GPM (for both JLA and CA; multiplies the homogeneous solution). ', 'min': -1000.0, 'max': 1000.0, 'srcline': 64, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}], 'groups': [{'name': 'Joint_Limit_Avoidance', 'type': 'jla', 'state': True, 'cstate': 'true', 'id': 3, 'parent': 2, 'parameters': [{'name': 'constraint_jla', 'type': 'int', 'default': 1, 'level': 0, 'description': 'The JLA constraint to use (edited via an enum)', 'min': -2147483648, 'max': 2147483647, 'srcline': 67, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': "{'enum': [{'name': 'JLA_OFF', 'type': 'int', 'value': 0, 'srcline': 27, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'description': 'JLA inactive', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'JLA', 'type': 'int', 'value': 1, 'srcline': 28, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'description': 'JLA active', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'JLA_MID', 'type': 'int', 'value': 2, 'srcline': 29, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'description': 'Special JLA: Keep joint pos in the middle of the limited range.', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'JLA_INEQ', 'type': 'int', 'value': 3, 'srcline': 30, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'description': 'Inequality constraint for JLA.', 'ctype': 'int', 'cconsttype': 'const int'}], 'enum_description': 'enum types for the joint limit avoidance constraints'}", 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'priority_jla', 'type': 'int', 'default': 50, 'level': 0, 'description': 'Priority for the joint limit avoidance constraint (important for task processing; 0 = highest prio)', 'min': 0, 'max': 1000, 'srcline': 68, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'k_H_jla', 'type': 'double', 'default': -1.0, 'level': 0, 'description': 'Self-motion factor for GPM. Special weighting for JLA constraint', 'min': -1000.0, 'max': 1000.0, 'srcline': 69, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'activation_threshold_jla', 'type': 'double', 'default': 10.0, 'level': 0, 'description': 'In [%]. Tolerance from min and max joint positition limit.', 'min': 0.0, 'max': 100.0, 'srcline': 70, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'activation_buffer_jla', 'type': 'double', 'default': 300.0, 'level': 0, 'description': 'In [%]. For smooth transition an additional buffer to activation threshold can be given. Smoothing is started prior to activation threshold. (0 % = no smoothing)', 'min': 0.0, 'max': 500.0, 'srcline': 71, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'critical_threshold_jla', 'type': 'double', 'default': 5.0, 'level': 0, 'description': 'In [%]. Tolerance when critical region becomes active. JLA becomes task. Should be less than activation threshold (best experienced: 1/2 of activation threshold).', 'min': 0.0, 'max': 100.0, 'srcline': 72, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'damping_jla', 'type': 'double', 'default': 1e-06, 'level': 0, 'description': 'Const. damping factor for the inv. of the JLA task jacobian', 'min': 0.0, 'max': 1.0, 'srcline': 73, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}], 'groups': [], 'srcline': 124, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'class': 'DEFAULT::SOLVER_AND_CONSTRAINTS::JOINT_LIMIT_AVOIDANCE', 'parentclass': 'DEFAULT::SOLVER_AND_CONSTRAINTS', 'parentname': 'Solver_and_Constraints', 'field': 'DEFAULT::SOLVER_AND_CONSTRAINTS::joint_limit_avoidance', 'upper': 'JOINT_LIMIT_AVOIDANCE', 'lower': 'joint_limit_avoidance'}, {'name': 'Collision_Avoidance', 'type': 'ca', 'state': True, 'cstate': 'true', 'id': 4, 'parent': 2, 'parameters': [{'name': 'constraint_ca', 'type': 'int', 'default': 0, 'level': 0, 'description': 'The CA constraint to use (edited via an enum)', 'min': -2147483648, 'max': 2147483647, 'srcline': 76, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': "{'enum': [{'name': 'CA_OFF', 'type': 'int', 'value': 0, 'srcline': 35, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'description': 'CA inactive', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'CA', 'type': 'int', 'value': 1, 'srcline': 36, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'description': 'Collision avoidance active!', 'ctype': 'int', 'cconsttype': 'const int'}], 'enum_description': 'enum types for the collision avoidance constraints'}", 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'priority_ca', 'type': 'int', 'default': 100, 'level': 0, 'description': 'Priority for the collision avoidance constraint (important for task processing; 0 = highest prio).', 'min': 0, 'max': 1000, 'srcline': 77, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'k_H_ca', 'type': 'double', 'default': -20.0, 'level': 0, 'description': 'Self-motion factor for GPM. Special weighting for CA constraint', 'min': -1000.0, 'max': 1000.0, 'srcline': 78, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'activation_threshold_ca', 'type': 'double', 'default': 0.1, 'level': 0, 'description': 'The distance the constraint shall get active in [m].', 'min': 0.0, 'max': 1.0, 'srcline': 79, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'activation_buffer_ca', 'type': 'double', 'default': 50.0, 'level': 0, 'description': 'In [%]. For smooth transition an additional buffer to activation threshold can be given. Smoothing is started prior to activation threshold. (0 % = no smoothing)', 'min': 0.0, 'max': 100.0, 'srcline': 80, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'critical_threshold_ca', 'type': 'double', 'default': 0.025, 'level': 0, 'description': 'Tolerance when critical region becomes active. CA becomes task. Should be less than activation threshold (best experienced: 1/4 of activation threshold).', 'min': 0.0, 'max': 1.0, 'srcline': 81, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'damping_ca', 'type': 'double', 'default': 1e-06, 'level': 0, 'description': 'Const. damping factor for the inv. of the CA task jacobian', 'min': 0.0, 'max': 1.0, 'srcline': 82, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}], 'groups': [], 'srcline': 124, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'class': 'DEFAULT::SOLVER_AND_CONSTRAINTS::COLLISION_AVOIDANCE', 'parentclass': 'DEFAULT::SOLVER_AND_CONSTRAINTS', 'parentname': 'Solver_and_Constraints', 'field': 'DEFAULT::SOLVER_AND_CONSTRAINTS::collision_avoidance', 'upper': 'COLLISION_AVOIDANCE', 'lower': 'collision_avoidance'}, {'name': 'Unified_JLA_SA', 'type': 'ujs', 'state': True, 'cstate': 'true', 'id': 5, 'parent': 2, 'parameters': [{'name': 'sigma', 'type': 'double', 'default': 0.01, 'level': 0, 'description': 'Sigma', 'min': 0.01, 'max': 1.0, 'srcline': 85, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'sigma_speed', 'type': 'double', 'default': 5.0, 'level': 0, 'description': 'Sigma Speed', 'min': 0.01, 'max': 10.0, 'srcline': 86, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'delta_pos', 'type': 'double', 'default': 0.5, 'level': 0, 'description': 'Delta Pos', 'min': 0.001, 'max': 1.0, 'srcline': 87, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'delta_speed', 'type': 'double', 'default': 1.0, 'level': 0, 'description': 'Delta Speed', 'min': 0.001, 'max': 10.0, 'srcline': 88, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}], 'groups': [], 'srcline': 124, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'class': 'DEFAULT::SOLVER_AND_CONSTRAINTS::UNIFIED_JLA_SA', 'parentclass': 'DEFAULT::SOLVER_AND_CONSTRAINTS', 'parentname': 'Solver_and_Constraints', 'field': 'DEFAULT::SOLVER_AND_CONSTRAINTS::unified_jla_sa', 'upper': 'UNIFIED_JLA_SA', 'lower': 'unified_jla_sa'}], 'srcline': 124, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'class': 'DEFAULT::SOLVER_AND_CONSTRAINTS', 'parentclass': 'DEFAULT', 'parentname': 'Default', 'field': 'DEFAULT::solver_and_constraints', 'upper': 'SOLVER_AND_CONSTRAINTS', 'lower': 'solver_and_constraints'}, {'name': 'Limits', 'type': 'limits', 'state': True, 'cstate': 'true', 'id': 6, 'parent': 0, 'parameters': [{'name': 'keep_direction', 'type': 'bool', 'default': True, 'level': 0, 'description': 'With keep_direction the whole joint positions and velocities vector is affected by a scaling factor. Else only individual components of the vectors are affected -> direction will be changed.', 'min': False, 'max': True, 'srcline': 92, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'bool', 'cconsttype': 'const bool'}, {'name': 'enforce_input_limits', 'type': 'bool', 'default': True, 'level': 0, 'description': "If 'True', enforce Cartesian velocity limits on input twist", 'min': False, 'max': True, 'srcline': 93, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'bool', 'cconsttype': 'const bool'}, {'name': 'enforce_pos_limits', 'type': 'bool', 'default': True, 'level': 0, 'description': "If 'True', enforce joint position limits in TwistController, else let RobotHW handle the limits", 'min': False, 'max': True, 'srcline': 94, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'bool', 'cconsttype': 'const bool'}, {'name': 'enforce_vel_limits', 'type': 'bool', 'default': True, 'level': 0, 'description': "If 'True', enforce joint velocity limits in TwistController, else let RobotHW handle the limits", 'min': False, 'max': True, 'srcline': 95, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'bool', 'cconsttype': 'const bool'}, {'name': 'enforce_acc_limits', 'type': 'bool', 'default': False, 'level': 0, 'description': "If 'True', enforce joint acceleration limits in TwistController, else let RobotHW handle the limits", 'min': False, 'max': True, 'srcline': 96, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'bool', 'cconsttype': 'const bool'}, {'name': 'limits_tolerance', 'type': 'double', 'default': 30.0, 'level': 0, 'description': 'Tolerance around joint position limits where velocities are normalized [degrees]. Must not be zero else DIV/0!', 'min': 0.0, 'max': 90.0, 'srcline': 97, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'max_lin_twist', 'type': 'double', 'default': 0.5, 'level': 0, 'description': 'Maximum input linear velocity, twist command for the inverse kinematics solver in [m/s].', 'min': 0.0, 'max': 5.0, 'srcline': 98, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'max_rot_twist', 'type': 'double', 'default': 0.5, 'level': 0, 'description': 'Maximum input rotational velocity, twist command for the inverse kinematics solver in [rad/s].', 'min': 0.0, 'max': 5.0, 'srcline': 99, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'max_vel_lin_base', 'type': 'double', 'default': 0.5, 'level': 0, 'description': 'Maximum linear velocity to be commanded to the base in [m/s].', 'min': 0.0, 'max': 1.5, 'srcline': 100, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'max_vel_rot_base', 'type': 'double', 'default': 0.5, 'level': 0, 'description': 'Maximum rotational velocity to be commanded to the base in [rad/s].', 'min': 0.0, 'max': 1.5, 'srcline': 101, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}], 'groups': [], 'srcline': 124, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'class': 'DEFAULT::LIMITS', 'parentclass': 'DEFAULT', 'parentname': 'Default', 'field': 'DEFAULT::limits', 'upper': 'LIMITS', 'lower': 'limits'}, {'name': 'Kinematics_Extension', 'type': 'kin_ext', 'state': True, 'cstate': 'true', 'id': 7, 'parent': 0, 'parameters': [{'name': 'kinematic_extension', 'type': 'int', 'default': 0, 'level': 0, 'description': 'Consider additional DoF', 'min': -2147483648, 'max': 2147483647, 'srcline': 105, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': "{'enum': [{'name': 'NO_EXTENSION', 'type': 'int', 'value': 0, 'srcline': 41, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'description': 'No additional DoF considered', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'BASE_COMPENSATION', 'type': 'int', 'value': 1, 'srcline': 42, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'description': 'Compensate base motion', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'BASE_ACTIVE', 'type': 'int', 'value': 2, 'srcline': 43, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'description': 'Consider additional DoF of a mobile base (2d)', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'COB_TORSO', 'type': 'int', 'value': 3, 'srcline': 44, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'description': 'KinematicExtension for COB_TORSO (any DoF)', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'LOOKAT', 'type': 'int', 'value': 4, 'srcline': 45, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'description': 'Consider additional DoF of a virtual Lookat component', 'ctype': 'int', 'cconsttype': 'const int'}], 'enum_description': 'enum types for the kinematic extensions'}", 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'extension_ratio', 'type': 'double', 'default': 0.01, 'level': 0, 'description': 'Value for ratio between chain and extension', 'min': 0.0, 'max': 1.0, 'srcline': 106, 'srcfile': '/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_twist_controller/cfg/TwistController.cfg', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}], 'groups': [], 'srcline': 124, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'class': 'DEFAULT::KINEMATICS_EXTENSION', 'parentclass': 'DEFAULT', 'parentname': 'Default', 'field': 'DEFAULT::kinematics_extension', 'upper': 'KINEMATICS_EXTENSION', 'lower': 'kinematics_extension'}], 'srcline': 246, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'class': 'DEFAULT', 'parentclass': '', 'parentname': 'Default', 'field': 'default', 'upper': 'DEFAULT', 'lower': 'groups'}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

TwistController_NO_DAMPING = 0
TwistController_CONSTANT = 1
TwistController_MANIPULABILITY = 2
TwistController_LEAST_SINGULAR_VALUE = 3
TwistController_SIGMOID = 4
TwistController_DEFAULT_SOLVER = 0
TwistController_WLN = 1
TwistController_GPM = 2
TwistController_STACK_OF_TASKS = 3
TwistController_TASK_2ND_PRIO = 4
TwistController_UNIFIED_JLA_SA = 5
TwistController_JLA_OFF = 0
TwistController_JLA = 1
TwistController_JLA_MID = 2
TwistController_JLA_INEQ = 3
TwistController_CA_OFF = 0
TwistController_CA = 1
TwistController_NO_EXTENSION = 0
TwistController_BASE_COMPENSATION = 1
TwistController_BASE_ACTIVE = 2
TwistController_COB_TORSO = 3
TwistController_LOOKAT = 4
