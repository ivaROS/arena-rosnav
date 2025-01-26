
(cl:in-package :asdf)

(defsystem "pedsim_srvs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :pedsim_msgs-msg
)
  :components ((:file "_package")
    (:file "GetAgentState" :depends-on ("_package_GetAgentState"))
    (:file "_package_GetAgentState" :depends-on ("_package"))
    (:file "GetAllAgentsState" :depends-on ("_package_GetAllAgentsState"))
    (:file "_package_GetAllAgentsState" :depends-on ("_package"))
    (:file "MovePeds" :depends-on ("_package_MovePeds"))
    (:file "_package_MovePeds" :depends-on ("_package"))
    (:file "RegisterRobot" :depends-on ("_package_RegisterRobot"))
    (:file "_package_RegisterRobot" :depends-on ("_package"))
    (:file "SetAgentState" :depends-on ("_package_SetAgentState"))
    (:file "_package_SetAgentState" :depends-on ("_package"))
    (:file "SetAllAgentsState" :depends-on ("_package_SetAllAgentsState"))
    (:file "_package_SetAllAgentsState" :depends-on ("_package"))
    (:file "SpawnObstacles" :depends-on ("_package_SpawnObstacles"))
    (:file "_package_SpawnObstacles" :depends-on ("_package"))
    (:file "SpawnPed" :depends-on ("_package_SpawnPed"))
    (:file "_package_SpawnPed" :depends-on ("_package"))
    (:file "SpawnPeds" :depends-on ("_package_SpawnPeds"))
    (:file "_package_SpawnPeds" :depends-on ("_package"))
    (:file "SpawnWalls" :depends-on ("_package_SpawnWalls"))
    (:file "_package_SpawnWalls" :depends-on ("_package"))
  ))