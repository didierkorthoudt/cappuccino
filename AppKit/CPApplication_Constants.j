/*
 * CPApplication_Constants.j
 * AppKit
 *
 * Created by Aparajita Fishman.
 * Copyright 2013 The Cappuccino Project
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 */

CPApp = nil;

CPApplicationWillFinishLaunchingNotification        = @"CPApplicationWillFinishLaunchingNotification";
CPApplicationDidFinishLaunchingNotification         = @"CPApplicationDidFinishLaunchingNotification";
CPApplicationWillTerminateNotification              = @"CPApplicationWillTerminateNotification";
CPApplicationWillBecomeActiveNotification           = @"CPApplicationWillBecomeActiveNotification";
CPApplicationDidBecomeActiveNotification            = @"CPApplicationDidBecomeActiveNotification";
CPApplicationWillResignActiveNotification           = @"CPApplicationWillResignActiveNotification";
CPApplicationDidResignActiveNotification            = @"CPApplicationDidResignActiveNotification";
CPApplicationDidChangeScreenParametersNotification  = @"CPApplicationDidChangeScreenParametersNotification";

@typedef CPApplicationTerminateReply
CPTerminateNow      = YES;
CPTerminateCancel   = NO;
CPTerminateLater    = -1; // not currently supported

CPRunStoppedResponse    = -1000;
CPRunAbortedResponse    = -1001;
CPRunContinuesResponse  = -1002;

// Should the application follow Cappuccino UX-UI (which is OSX like) or OS UX-UI (mainly Windows) ?
// See explanation on https://github.com/cappuccino/cappuccino/wiki/CPApplicationSelectedOSBehavior
@typedef CPApplicationOSBehavior
CPApplicationLegacyOSBehavior = 1;
CPApplicationFollowOSBehavior = 2;

CPApplicationSelectedOSBehavior              = CPApplicationLegacyOSBehavior;
CPApplicationShouldMimicWindows              = NO;
CPApplicationOSBehaviorDidChangeNotification = @"CPApplicationOSBehaviorDidChangeNotification";
CPApplicationOSBehaviors                     = @{
                                                 @"CPApplicationLegacyOSBehavior": CPApplicationLegacyOSBehavior,
                                                 @"CPApplicationFollowOSBehavior": CPApplicationFollowOSBehavior
                                                 };
_CPApplicationSimulateWindowsOS              = NO;
