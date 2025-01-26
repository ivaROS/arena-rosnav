
"use strict";

let TrackedPersons2d = require('./TrackedPersons2d.js');
let TrackedGroups = require('./TrackedGroups.js');
let TrackedPersons = require('./TrackedPersons.js');
let TrackedPerson = require('./TrackedPerson.js');
let TrackedGroup = require('./TrackedGroup.js');
let PersonTrajectoryEntry = require('./PersonTrajectoryEntry.js');
let TrackedPerson2d = require('./TrackedPerson2d.js');
let DetectedPersons = require('./DetectedPersons.js');
let ImmDebugInfo = require('./ImmDebugInfo.js');
let TrackingTimingMetrics = require('./TrackingTimingMetrics.js');
let PersonTrajectory = require('./PersonTrajectory.js');
let ImmDebugInfos = require('./ImmDebugInfos.js');
let DetectedPerson = require('./DetectedPerson.js');
let CompositeDetectedPersons = require('./CompositeDetectedPersons.js');
let CompositeDetectedPerson = require('./CompositeDetectedPerson.js');

module.exports = {
  TrackedPersons2d: TrackedPersons2d,
  TrackedGroups: TrackedGroups,
  TrackedPersons: TrackedPersons,
  TrackedPerson: TrackedPerson,
  TrackedGroup: TrackedGroup,
  PersonTrajectoryEntry: PersonTrajectoryEntry,
  TrackedPerson2d: TrackedPerson2d,
  DetectedPersons: DetectedPersons,
  ImmDebugInfo: ImmDebugInfo,
  TrackingTimingMetrics: TrackingTimingMetrics,
  PersonTrajectory: PersonTrajectory,
  ImmDebugInfos: ImmDebugInfos,
  DetectedPerson: DetectedPerson,
  CompositeDetectedPersons: CompositeDetectedPersons,
  CompositeDetectedPerson: CompositeDetectedPerson,
};
