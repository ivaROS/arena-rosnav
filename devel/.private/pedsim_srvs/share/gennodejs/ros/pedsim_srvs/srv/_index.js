
"use strict";

let GetAgentState = require('./GetAgentState.js')
let SpawnPeds = require('./SpawnPeds.js')
let SetAgentState = require('./SetAgentState.js')
let RegisterRobot = require('./RegisterRobot.js')
let GetAllAgentsState = require('./GetAllAgentsState.js')
let MovePeds = require('./MovePeds.js')
let SpawnObstacles = require('./SpawnObstacles.js')
let SetAllAgentsState = require('./SetAllAgentsState.js')
let SpawnWalls = require('./SpawnWalls.js')
let SpawnPed = require('./SpawnPed.js')

module.exports = {
  GetAgentState: GetAgentState,
  SpawnPeds: SpawnPeds,
  SetAgentState: SetAgentState,
  RegisterRobot: RegisterRobot,
  GetAllAgentsState: GetAllAgentsState,
  MovePeds: MovePeds,
  SpawnObstacles: SpawnObstacles,
  SetAllAgentsState: SetAllAgentsState,
  SpawnWalls: SpawnWalls,
  SpawnPed: SpawnPed,
};
