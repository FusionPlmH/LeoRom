.class public Landroid/view/WindowManager$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "WindowManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManager$LayoutParams$LayoutInDisplayCutoutMode;,
        Landroid/view/WindowManager$LayoutParams$SoftInputModeFlags;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_ANCHOR_CHANGED:I = 0x1000000

.field public static final ACCESSIBILITY_TITLE_CHANGED:I = 0x2000000

.field public static final ALPHA_CHANGED:I = 0x80

.field public static final ANIMATION_CHANGED:I = 0x10

.field public static final BRIGHTNESS_OVERRIDE_FULL:F = 1.0f

.field public static final BRIGHTNESS_OVERRIDE_NONE:F = -1.0f

.field public static final BRIGHTNESS_OVERRIDE_OFF:F = 0.0f

.field public static final BUTTON_BRIGHTNESS_CHANGED:I = 0x2000

.field public static final COLOR_MODE_CHANGED:I = 0x4000000

.field public static final COVER_MODE_CHANGED:I = 0x20000000

.field public static final COVER_MODE_HIDE_SVIEW_ONCE:I = 0x2

.field public static final COVER_MODE_NONE:I = 0x0

.field public static final COVER_MODE_SVIEW:I = 0x1

.field public static final COVER_MODE_SVIEW_SUB_WINDOW:I = 0xa

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIM_AMOUNT_CHANGED:I = 0x20

.field public static final EVERYTHING_CHANGED:I = -0x1

.field public static final FIRST_APPLICATION_WINDOW:I = 0x1

.field public static final FIRST_SUB_WINDOW:I = 0x3e8

.field public static final FIRST_SYSTEM_WINDOW:I = 0x7d0

.field public static final FLAGS_CHANGED:I = 0x4

.field public static final FLAG_ALLOW_LOCK_WHILE_SCREEN_ON:I = 0x1

.field public static final FLAG_ALT_FOCUSABLE_IM:I = 0x20000

.field public static final FLAG_BLUR_BEHIND:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_DIM_BEHIND:I = 0x2

.field public static final FLAG_DISMISS_KEYGUARD:I = 0x400000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_DITHER:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS:I = -0x80000000

.field public static final FLAG_FORCE_NOT_FULLSCREEN:I = 0x800

.field public static final FLAG_FULLSCREEN:I = 0x400

.field public static final FLAG_HARDWARE_ACCELERATED:I = 0x1000000

.field public static final FLAG_IGNORE_CHEEK_PRESSES:I = 0x8000

.field public static final FLAG_KEEP_SCREEN_ON:I = 0x80

.field public static final FLAG_LAYOUT_ATTACHED_IN_DECOR:I = 0x40000000

.field public static final FLAG_LAYOUT_INSET_DECOR:I = 0x10000

.field public static final FLAG_LAYOUT_IN_OVERSCAN:I = 0x2000000

.field public static final FLAG_LAYOUT_IN_SCREEN:I = 0x100

.field public static final FLAG_LAYOUT_NO_LIMITS:I = 0x200

.field public static final FLAG_LOCAL_FOCUS_MODE:I = 0x10000000

.field public static final FLAG_NOT_FOCUSABLE:I = 0x8

.field public static final FLAG_NOT_TOUCHABLE:I = 0x10

.field public static final FLAG_NOT_TOUCH_MODAL:I = 0x20

.field public static final FLAG_SCALED:I = 0x4000

.field public static final FLAG_SECURE:I = 0x2000

.field public static final FLAG_SHOW_WALLPAPER:I = 0x100000

.field public static final FLAG_SHOW_WHEN_LOCKED:I = 0x80000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_SLIPPERY:I = 0x20000000

.field public static final FLAG_SPLIT_TOUCH:I = 0x800000

.field public static final FLAG_TOUCHABLE_WHEN_WAKING:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_TRANSLUCENT_NAVIGATION:I = 0x8000000

.field public static final FLAG_TRANSLUCENT_STATUS:I = 0x4000000

.field public static final FLAG_TURN_SCREEN_ON:I = 0x200000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_WATCH_OUTSIDE_TOUCH:I = 0x40000

.field public static final FORMAT_CHANGED:I = 0x8

.field public static final INPUT_FEATURES_CHANGED:I = 0x10000

.field public static final INPUT_FEATURE_DISABLE_POINTER_GESTURES:I = 0x1

.field public static final INPUT_FEATURE_DISABLE_USER_ACTIVITY:I = 0x4

.field public static final INPUT_FEATURE_NO_INPUT_CHANNEL:I = 0x2

.field public static final INVALID_WINDOW_TYPE:I = -0x1

.field public static final LAST_APPLICATION_WINDOW:I = 0x63

.field public static final LAST_SUB_WINDOW:I = 0x7cf

.field public static final LAST_SYSTEM_WINDOW:I = 0xbb7

.field public static final LAYOUT_CHANGED:I = 0x1

.field public static final LAYOUT_IN_DISPLAY_CUTOUT_MODE_ALWAYS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYOUT_IN_DISPLAY_CUTOUT_MODE_DEFAULT:I = 0x0

.field public static final LAYOUT_IN_DISPLAY_CUTOUT_MODE_NEVER:I = 0x2

.field public static final LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES:I = 0x1

.field public static final MEMORY_TYPE_CHANGED:I = 0x100

.field public static final MEMORY_TYPE_GPU:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMORY_TYPE_HARDWARE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMORY_TYPE_NORMAL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMORY_TYPE_PUSH_BUFFERS:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NEEDS_MENU_KEY_CHANGED:I = 0x400000

.field public static final NEEDS_MENU_SET_FALSE:I = 0x2

.field public static final NEEDS_MENU_SET_TRUE:I = 0x1

.field public static final NEEDS_MENU_UNSET:I = 0x0

.field public static final PREFERRED_DISPLAY_MODE_ID:I = 0x800000

.field public static final PREFERRED_REFRESH_RATE_CHANGED:I = 0x200000

.field public static final PRIVATE_FLAGS_CHANGED:I = 0x20000

.field public static final PRIVATE_FLAG_ACQUIRES_SLEEP_TOKEN:I = 0x200000

.field public static final PRIVATE_FLAG_COMPATIBLE_WINDOW:I = 0x80

.field public static final PRIVATE_FLAG_DISABLE_WALLPAPER_TOUCH_EVENTS:I = 0x800

.field public static final PRIVATE_FLAG_FAKE_HARDWARE_ACCELERATED:I = 0x1

.field public static final PRIVATE_FLAG_FORCE_DECOR_VIEW_VISIBILITY:I = 0x4000

.field public static final PRIVATE_FLAG_FORCE_DRAW_STATUS_BAR_BACKGROUND:I = 0x20000

.field public static final PRIVATE_FLAG_FORCE_HARDWARE_ACCELERATED:I = 0x2

.field public static final PRIVATE_FLAG_FORCE_STATUS_BAR_VISIBLE_TRANSPARENT:I = 0x1000

.field public static final PRIVATE_FLAG_HIDE_NON_SYSTEM_OVERLAY_WINDOWS:I = 0x80000

.field public static final PRIVATE_FLAG_INHERIT_TRANSLUCENT_DECOR:I = 0x200

.field public static final PRIVATE_FLAG_IS_ROUNDED_CORNERS_OVERLAY:I = 0x100000

.field public static final PRIVATE_FLAG_IS_SCREEN_DECOR:I = 0x400000

.field public static final PRIVATE_FLAG_KEYGUARD:I = 0x400

.field public static final PRIVATE_FLAG_LAYOUT_CHILD_WINDOW_IN_PARENT_FRAME:I = 0x10000

.field public static final PRIVATE_FLAG_NO_MOVE_ANIMATION:I = 0x40

.field public static final PRIVATE_FLAG_PRESERVE_GEOMETRY:I = 0x2000

.field public static final PRIVATE_FLAG_SHARED_DEVICE_KEYGUARD:I = 0x800000

.field public static final PRIVATE_FLAG_SHOW_FOR_ALL_USERS:I = 0x10

.field public static final PRIVATE_FLAG_SUSTAINED_PERFORMANCE_MODE:I = 0x40000

.field public static final PRIVATE_FLAG_SYSTEM_ERROR:I = 0x100

.field public static final PRIVATE_FLAG_WANTS_OFFSET_NOTIFICATIONS:I = 0x4

.field public static final PRIVATE_FLAG_WILL_NOT_REPLACE_ON_RELAUNCH:I = 0x8000

.field public static final ROTATION_ANIMATION_CHANGED:I = 0x1000

.field public static final ROTATION_ANIMATION_CROSSFADE:I = 0x1

.field public static final ROTATION_ANIMATION_JUMPCUT:I = 0x2

.field public static final ROTATION_ANIMATION_ROTATE:I = 0x0

.field public static final ROTATION_ANIMATION_SEAMLESS:I = 0x3

.field public static final ROTATION_ANIMATION_UNSPECIFIED:I = -0x1

.field public static final SAMSUNG_FLAGS_CHANGED:I = 0x10000000

.field public static final SAMSUNG_FLAG_DECOR_CAPTION_WINDOW:I = 0x100

.field public static final SAMSUNG_FLAG_DEX_TOUCH_PAD_FLAG_ABS_COORDINATE:I = 0x40000000

.field public static final SAMSUNG_FLAG_DEX_TOUCH_PAD_WINDOW:I = 0x20000000

.field public static final SCREEN_BRIGHTNESS_CHANGED:I = 0x800

.field public static final SCREEN_DIM_DURATION_CHANGED:I = 0x8000000

.field public static final SCREEN_ORIENTATION_CHANGED:I = 0x400

.field public static final SEM_EXTENSION_FLAG_CHANGE_DIM_EFFECT_TO_BLUR:I = 0x40

.field public static final SEM_EXTENSION_FLAG_CONTENT_RESIZE_ANIMATION:I = 0x4000

.field public static final SEM_EXTENSION_FLAG_DELAY_RESIZE_ON_SOFT_INPUT:I = 0x200

.field public static final SEM_EXTENSION_FLAG_DELIVER_OUTSIDE_TOUCH:I = 0x8000000

.field public static final SEM_EXTENSION_FLAG_DOZE_MODE:I = 0x40000

.field public static final SEM_EXTENSION_FLAG_FAKE_FOCUS:I = 0x10000

.field public static final SEM_EXTENSION_FLAG_FIXED_ORIENTATION_LANDSCAPE:I = 0x4

.field public static final SEM_EXTENSION_FLAG_FIXED_ORIENTATION_PORTRAIT:I = 0x8

.field public static final SEM_EXTENSION_FLAG_FORCE_HIDE_DEX_LOADING_SCREEN:I = 0x1000

.field public static final SEM_EXTENSION_FLAG_FORCE_HIDE_FLOATING_MULTIWINDOW:I = 0x4000000

.field public static final SEM_EXTENSION_FLAG_FORCE_TRUSTED_OVERLAY:I = 0x20000

.field public static final SEM_EXTENSION_FLAG_INTERNAL_PRESENTATION_ONLY:I = -0x80000000

.field public static final SEM_EXTENSION_FLAG_MOBILE_KEYBOARD_INPUT_METHOD:I = 0x800

.field public static final SEM_EXTENSION_FLAG_NO_RESIZE_ANIMATION_INCLUDE_CHILD:I = 0x10

.field public static final SEM_EXTENSION_FLAG_NO_SURFACE_BUFFER:I = 0x80

.field public static final SEM_EXTENSION_FLAG_OVERRIDE_SYSTEM_UI_POLICY:I = 0x20

.field public static final SEM_EXTENSION_FLAG_RESIZE_FULLSCREEN_WINDOW_ON_SOFT_INPUT:I = 0x1

.field public static final SEM_EXTENSION_FLAG_SVIEW_COVER:I = 0x10000000

.field public static final SEM_INPUT_FEATURE_ENABLE_PARTIAL_TOUCH:I = 0x40000000

.field public static final SEM_INPUT_FEATURE_ROTATE_COORDINATE_180_DEGREE:I = 0x20000000

.field public static final SEM_INPUT_FEATURE_ROTATE_COORDINATE_90_DEGREE:I = 0x10000000

.field public static final SEM_PRIVATE_FLAG_FORCE_LIGHT_NAVIGATION_BAR:I = 0x1000000

.field public static final SEM_PRIVATE_FLAG_NO_MOVE_ANIMATION:I = 0x40

.field public static final SEM_PRIVATE_FLAG_SHOW_FOR_ALL_USERS:I = 0x10

.field public static final SEM_TYPE_AIR_COMMAND:I = 0x961

.field public static final SEM_TYPE_AIR_TRANSLATOR:I = 0x98a

.field public static final SEM_TYPE_AOD:I = 0x8b1

.field public static final SEM_TYPE_BIXBY_CLIENT:I = 0x96e

.field public static final SEM_TYPE_CARMODE_BAR:I = 0x8de

.field public static final SEM_TYPE_CARMODE_BAR_OVERLAY:I = 0x8df

.field public static final SEM_TYPE_CLIPBOARD:I = 0x960

.field public static final SEM_TYPE_COCKTAIL_BAR:I = 0x8ac

.field public static final SEM_TYPE_COCKTAIL_BAR_BACKGROUND:I = 0x8ad

.field public static final SEM_TYPE_COCKTAIL_BAR_OVERLAY:I = 0x8ae

.field public static final SEM_TYPE_CONVENTIONAL_RATIO_CHANGE_GUIDE:I = 0x8e0

.field public static final SEM_TYPE_DEX_INTERNAL_PRESENTATION:I = 0x975

.field public static final SEM_TYPE_DOZE_DREAM:I = 0x96a

.field public static final SEM_TYPE_EDGE_OVERLAY:I = 0x8b2

.field public static final SEM_TYPE_FLOATING_APPLICATION_WINDOW:I = 0x96d

.field public static final SEM_TYPE_GAME_TOOL:I = 0x97e

.field public static final SEM_TYPE_GAME_TOOL_OVERLAY:I = 0x97f

.field public static final SEM_TYPE_GLOBAL_ACTION:I = 0x96b

.field public static final SEM_TYPE_INPUT_METHOD_PANEL:I = 0x44c

.field public static final SEM_TYPE_INTERNAL_PRESENTATION:I = 0x967

.field public static final SEM_TYPE_KNOX_KEYGUARD:I = 0x964

.field public static final SEM_TYPE_NAVIBAR_GESTURE_INTERCEPT_OVERLAY:I = 0x8e2

.field public static final SEM_TYPE_NAVIBAR_TOUCH_INTERCEPT_OVERLAY:I = 0x8e1

.field public static final SEM_TYPE_NAVIGATION_BAR_OVERLAY:I = 0x7e8

.field public static final SEM_TYPE_NIGHT_CLOCK_BACKGROUND:I = 0x8b4

.field public static final SEM_TYPE_NIGHT_CLOCK_OVERLAY:I = 0x8b3

.field public static final SEM_TYPE_PENTASTIC_ANIM:I = 0x963

.field public static final SEM_TYPE_PENTASTIC_ICON:I = 0x962

.field public static final SEM_TYPE_POPUP_PLAYER:I = 0x966

.field public static final SEM_TYPE_SCREENSHOT_EFFECT:I = 0x968

.field public static final SEM_TYPE_SCROLL_CAPTURE:I = 0x989

.field public static final SEM_TYPE_SHARED_DEVICE_KEYGUARD:I = 0x969

.field public static final SEM_TYPE_SMART_SELECT:I = 0x988

.field public static final SEM_TYPE_STATUS_BAR_OVERLAY:I = 0x8e8

.field public static final SEM_TYPE_STATUS_BAR_PANEL_USER:I = 0x8e9

.field public static final SEM_TYPE_STATUS_BAR_WIDGET:I = 0x96f

.field public static final SEM_TYPE_SVIEW_COVER_DIALOG:I = 0x833

.field public static final SEM_TYPE_SYSTEM_DIALOG:I = 0x96c

.field public static final SEM_TYPE_TOUCH_PAD:I = 0x974

.field public static final SEM_TYPE_VR_BACKGROUND:I = 0x836

.field public static final SEM_TYPE_VR_MODE_TRANSITION:I = 0x835

.field public static final SEM_TYPE_VR_POPUP:I = 0x834

.field public static final SEM_TYPE_WINDOW_FOR_UNIVERSAL_VIEW:I = 0x965

.field public static final SOFT_INPUT_ADJUST_NOTHING:I = 0x30

.field public static final SOFT_INPUT_ADJUST_PAN:I = 0x20

.field public static final SOFT_INPUT_ADJUST_RESIZE:I = 0x10

.field public static final SOFT_INPUT_ADJUST_UNSPECIFIED:I = 0x0

.field public static final SOFT_INPUT_IS_FORWARD_NAVIGATION:I = 0x100

.field public static final SOFT_INPUT_MASK_ADJUST:I = 0xf0

.field public static final SOFT_INPUT_MASK_STATE:I = 0xf

.field public static final SOFT_INPUT_MODE_CHANGED:I = 0x200

.field public static final SOFT_INPUT_STATE_ALWAYS_HIDDEN:I = 0x3

.field public static final SOFT_INPUT_STATE_ALWAYS_VISIBLE:I = 0x5

.field public static final SOFT_INPUT_STATE_HIDDEN:I = 0x2

.field public static final SOFT_INPUT_STATE_UNCHANGED:I = 0x1

.field public static final SOFT_INPUT_STATE_UNSPECIFIED:I = 0x0

.field public static final SOFT_INPUT_STATE_VISIBLE:I = 0x4

.field public static final SURFACE_INSETS_CHANGED:I = 0x100000

.field public static final SYSTEM_UI_LISTENER_CHANGED:I = 0x8000

.field public static final SYSTEM_UI_VISIBILITY_CHANGED:I = 0x4000

.field public static final TITLE_CHANGED:I = 0x40

.field public static final TRANSLUCENT_FLAGS_CHANGED:I = 0x80000

.field public static final TYPE_ACCESSIBILITY_OVERLAY:I = 0x7f0

.field public static final TYPE_APPLICATION:I = 0x2

.field public static final TYPE_APPLICATION_ABOVE_SUB_PANEL:I = 0x3ed

.field public static final TYPE_APPLICATION_ATTACHED_DIALOG:I = 0x3eb

.field public static final TYPE_APPLICATION_MEDIA:I = 0x3e9

.field public static final TYPE_APPLICATION_MEDIA_OVERLAY:I = 0x3ec

.field public static final TYPE_APPLICATION_OVERLAY:I = 0x7f6

.field public static final TYPE_APPLICATION_PANEL:I = 0x3e8

.field public static final TYPE_APPLICATION_STARTING:I = 0x3

.field public static final TYPE_APPLICATION_SUB_PANEL:I = 0x3ea

.field public static final TYPE_BASE_APPLICATION:I = 0x1

.field public static final TYPE_BOOT_PROGRESS:I = 0x7e5

.field public static final TYPE_CHANGED:I = 0x2

.field public static final TYPE_DISPLAY_OVERLAY:I = 0x7ea

.field public static final TYPE_DOCK_DIVIDER:I = 0x7f2

.field public static final TYPE_DRAG:I = 0x7e0

.field public static final TYPE_DRAWN_APPLICATION:I = 0x4

.field public static final TYPE_DREAM:I = 0x7e7

.field public static final TYPE_FINGERPRINT_OVERLAY:I = 0xa38

.field public static final TYPE_INPUT_CONSUMER:I = 0x7e6

.field public static final TYPE_INPUT_METHOD:I = 0x7db

.field public static final TYPE_INPUT_METHOD_DIALOG:I = 0x7dc

.field public static final TYPE_KEYGUARD:I = 0x7d4

.field public static final TYPE_KEYGUARD_DIALOG:I = 0x7d9

.field public static final TYPE_MAGNIFICATION_OVERLAY:I = 0x7eb

.field public static final TYPE_MULTIWINDOW_DOCK_DIVIDER_CLOSE_PANEL:I = 0xa2f

.field public static final TYPE_MULTIWINDOW_DOCK_DIVIDER_PANEL:I = 0xa2b

.field public static final TYPE_MULTIWINDOW_DOCK_DIVIDER_PANEL_DIM_LAYER:I = 0xa30

.field public static final TYPE_MULTIWINDOW_GESTURE_GUIDE:I = 0xa2a

.field public static final TYPE_MULTIWINDOW_MINIMIZE_CONTAINER:I = 0xa2c

.field public static final TYPE_MULTIWINDOW_RESIZE_GUIDE:I = 0xa2e

.field public static final TYPE_MULTIWINDOW_SNAP_VIEW:I = 0xa2d

.field public static final TYPE_NAVIGATION_BAR:I = 0x7e3

.field public static final TYPE_NAVIGATION_BAR_ON_SECONDARY_DISPLAY:I = 0xa31

.field public static final TYPE_NAVIGATION_BAR_PANEL:I = 0x7e8

.field public static final TYPE_ONE_HAND_OP_CONTROLLER:I = 0xa28

.field public static final TYPE_ONE_HAND_OP_HANDLER:I = 0xa29

.field public static final TYPE_PHONE:I = 0x7d2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_POINTER:I = 0x7e2

.field public static final TYPE_PRESENTATION:I = 0x7f5

.field public static final TYPE_PRIORITY_PHONE:I = 0x7d7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_PRIVATE_PRESENTATION:I = 0x7ee

.field public static final TYPE_QS_DIALOG:I = 0x7f3

.field public static final TYPE_RECENTS_PANEL:I = 0x82f

.field public static final TYPE_SCREENSHOT:I = 0x7f4

.field public static final TYPE_SEARCH_BAR:I = 0x7d1

.field public static final TYPE_SECURE_SYSTEM_OVERLAY:I = 0x7df

.field public static final TYPE_SIDE_SCREEN_DIVIDER:I = 0xa35

.field public static final TYPE_SIDE_SCREEN_GUIDE_WINDOW:I = 0xa37

.field public static final TYPE_SIDE_SCREEN_PRIMARY_MENU:I = 0xa33

.field public static final TYPE_SIDE_SCREEN_SECONDARY_MENU:I = 0xa34

.field public static final TYPE_SIDE_SCREEN_STACK_DIVIDER:I = 0xa36

.field public static final TYPE_STATUS_BAR:I = 0x7d0

.field public static final TYPE_STATUS_BAR_ON_SECONDARY_DISPLAY:I = 0xa32

.field public static final TYPE_STATUS_BAR_PANEL:I = 0x7de

.field public static final TYPE_STATUS_BAR_SUB_PANEL:I = 0x7e1

.field public static final TYPE_SYSTEM_ALERT:I = 0x7d3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_SYSTEM_DIALOG:I = 0x7d8

.field public static final TYPE_SYSTEM_ERROR:I = 0x7da
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_SYSTEM_OVERLAY:I = 0x7d6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_TOAST:I = 0x7d5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_VOICE_INTERACTION:I = 0x7ef

.field public static final TYPE_VOICE_INTERACTION_STARTING:I = 0x7f1

.field public static final TYPE_VOLUME_OVERLAY:I = 0x7e4

.field public static final TYPE_VR_BACKGROUND:I = 0x836
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_VR_MODE_TRANSITION:I = 0x835
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_VR_POPUP:I = 0x834
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_WALLPAPER:I = 0x7dd

.field public static final USER_ACTIVITY_TIMEOUT_CHANGED:I = 0x40000


# instance fields
.field public accessibilityIdOfAnchor:J

.field public accessibilityTitle:Ljava/lang/CharSequence;

.field public alpha:F

.field public buttonBrightness:F

.field public coverMode:I

.field public dimAmount:F

.field public dimDuration:J

.field public flags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "ALLOW_LOCK_WHILE_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "DIM_BEHIND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "BLUR_BEHIND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "NOT_FOCUSABLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "NOT_TOUCHABLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "NOT_TOUCH_MODAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40
                mask = 0x40
                name = "TOUCHABLE_WHEN_WAKING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80
                mask = 0x80
                name = "KEEP_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100
                mask = 0x100
                name = "LAYOUT_IN_SCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200
                mask = 0x200
                name = "LAYOUT_NO_LIMITS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400
                mask = 0x400
                name = "FULLSCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800
                mask = 0x800
                name = "FORCE_NOT_FULLSCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "DITHER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000
                mask = 0x2000
                name = "SECURE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000
                mask = 0x4000
                name = "SCALED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "IGNORE_CHEEK_PRESSES"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000
                mask = 0x10000
                name = "LAYOUT_INSET_DECOR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20000
                mask = 0x20000
                name = "ALT_FOCUSABLE_IM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40000
                mask = 0x40000
                name = "WATCH_OUTSIDE_TOUCH"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80000
                mask = 0x80000
                name = "SHOW_WHEN_LOCKED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100000
                mask = 0x100000
                name = "SHOW_WALLPAPER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x200000
                name = "TURN_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x400000
                name = "DISMISS_KEYGUARD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "SPLIT_TOUCH"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000000
                mask = 0x1000000
                name = "HARDWARE_ACCELERATED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000000
                mask = 0x2000000
                name = "LOCAL_FOCUS_MODE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000000
                mask = 0x4000000
                name = "TRANSLUCENT_STATUS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000000
                mask = 0x8000000
                name = "TRANSLUCENT_NAVIGATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000000
                mask = 0x10000000
                name = "LOCAL_FOCUS_MODE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20000000
                mask = 0x20000000
                name = "FLAG_SLIPPERY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40000000
                mask = 0x40000000
                name = "FLAG_LAYOUT_ATTACHED_IN_DECOR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x80000000
                mask = -0x80000000
                name = "DRAWS_SYSTEM_BAR_BACKGROUNDS"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field public format:I

.field public gravity:I

.field public hasManualSurfaceInsets:Z

.field public hasRemoteWindowAnimationAdapter:Z

.field public hasSystemUiListeners:Z

.field public hideTimeoutMilliseconds:J

.field public horizontalMargin:F

.field public horizontalWeight:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public inputFeatures:I

.field public layoutInDisplayCutoutMode:I

.field private mColorMode:I

.field private mCompatibilityParamsBackup:[I

.field private mTitle:Ljava/lang/CharSequence;

.field public memoryType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public navigationBarIconColor:I

.field public needsMenuKey:I

.field public packageName:Ljava/lang/String;

.field public preferredDisplayModeId:I

.field public preferredRefreshRate:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public preservePreviousSurfaceInsets:Z

.field public privateFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "FAKE_HARDWARE_ACCELERATED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "FORCE_HARDWARE_ACCELERATED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "WANTS_OFFSET_NOTIFICATIONS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "SHOW_FOR_ALL_USERS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40
                mask = 0x40
                name = "NO_MOVE_ANIMATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80
                mask = 0x80
                name = "COMPATIBLE_WINDOW"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100
                mask = 0x100
                name = "SYSTEM_ERROR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200
                mask = 0x200
                name = "INHERIT_TRANSLUCENT_DECOR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400
                mask = 0x400
                name = "KEYGUARD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800
                mask = 0x800
                name = "DISABLE_WALLPAPER_TOUCH_EVENTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "FORCE_STATUS_BAR_VISIBLE_TRANSPARENT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000
                mask = 0x2000
                name = "PRESERVE_GEOMETRY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000
                mask = 0x4000
                name = "FORCE_DECOR_VIEW_VISIBILITY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "WILL_NOT_REPLACE_ON_RELAUNCH"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000
                mask = 0x10000
                name = "LAYOUT_CHILD_WINDOW_IN_PARENT_FRAME"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20000
                mask = 0x20000
                name = "FORCE_DRAW_STATUS_BAR_BACKGROUND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40000
                mask = 0x40000
                name = "SUSTAINED_PERFORMANCE_MODE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80000
                mask = 0x80000
                name = "HIDE_NON_SYSTEM_OVERLAY_WINDOWS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100000
                mask = 0x100000
                name = "IS_ROUNDED_CORNERS_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x200000
                name = "ACQUIRES_SLEEP_TOKEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x400000
                name = "IS_SCREEN_DECOR"
            .end subannotation
        }
    .end annotation
.end field

.field public remoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

.field public rotationAnimation:I

.field public samsungFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "RESIZE_FULLSCREEN_WINDOW_ON_SOFT_INPUT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "NO_RESIZE_ANIMATION_INCLUDE_CHILD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "OVERRIDE_SYSTEM_UI_POLICY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40
                mask = 0x40
                name = "CHANGE_DIM_EFFECT_TO_BLUR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80
                mask = 0x80
                name = "NO_SURFACE_BUFFER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100
                mask = 0x100
                name = "DECOR_CAPTION_WINDOW"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200
                mask = 0x200
                name = "DELAY_RESIZE_ON_SOFT_INPUT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800
                mask = 0x800
                name = "MOBILE_KEYBOARD_INPUT_METHOD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "FORCE_HIDE_DEX_LOADING_SCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000
                mask = 0x4000
                name = "CONTENT_RESIZE_ANIMATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000
                mask = 0x10000
                name = "FAKE_FOCUS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20000
                mask = 0x20000
                name = "FORCE_TRUSTED_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40000
                mask = 0x40000
                name = "DOZE_MODE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000000
                mask = 0x4000000
                name = "FORCE_HIDE_FLOATING_MULTIWINDOW"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000000
                mask = 0x8000000
                name = "DELIVER_OUTSIDE_TOUCH"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000000
                mask = 0x10000000
                name = "SVIEW_COVER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x80000000
                mask = -0x80000000
                name = "INTERNAL_PRESENTATION_ONLY"
            .end subannotation
        }
    .end annotation
.end field

.field public screenBrightness:F

.field public screenDimDuration:J

.field public screenOrientation:I

.field public softInputMode:I

.field public subtreeSystemUiVisibility:I

.field public final surfaceInsets:Landroid/graphics/Rect;

.field public systemUiVisibility:I

.field public token:Landroid/os/IBinder;

.field public type:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "BASE_APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "APPLICATION_STARTING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "DRAWN_APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3e8
                to = "APPLICATION_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3e9
                to = "APPLICATION_MEDIA"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ea
                to = "APPLICATION_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ed
                to = "APPLICATION_ABOVE_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3eb
                to = "APPLICATION_ATTACHED_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ec
                to = "APPLICATION_MEDIA_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d0
                to = "STATUS_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d1
                to = "SEARCH_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d2
                to = "PHONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d3
                to = "SYSTEM_ALERT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d5
                to = "TOAST"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d6
                to = "SYSTEM_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d7
                to = "PRIORITY_PHONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d8
                to = "SYSTEM_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d9
                to = "KEYGUARD_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7da
                to = "SYSTEM_ERROR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7db
                to = "INPUT_METHOD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7dc
                to = "INPUT_METHOD_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7dd
                to = "WALLPAPER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7de
                to = "STATUS_BAR_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7df
                to = "SECURE_SYSTEM_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e0
                to = "DRAG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e1
                to = "STATUS_BAR_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e2
                to = "POINTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e3
                to = "NAVIGATION_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e4
                to = "VOLUME_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e5
                to = "BOOT_PROGRESS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e6
                to = "INPUT_CONSUMER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e7
                to = "DREAM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e8
                to = "NAVIGATION_BAR_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ea
                to = "DISPLAY_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7eb
                to = "MAGNIFICATION_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f5
                to = "PRESENTATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ee
                to = "PRIVATE_PRESENTATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ef
                to = "VOICE_INTERACTION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f1
                to = "VOICE_INTERACTION_STARTING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f2
                to = "DOCK_DIVIDER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f3
                to = "QS_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f4
                to = "SCREENSHOT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f6
                to = "APPLICATION_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x833
                to = "SEM_SVIEW_COVER_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8ac
                to = "SEM_COCKTAIL_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8ad
                to = "SEM_COCKTAIL_BAR_BACKGROUND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8ae
                to = "SEM_COCKTAIL_BAR_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8b1
                to = "SEM_AOD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8b2
                to = "SEM_EDGE_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8b3
                to = "SEM_NIGHT_CLOCK_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8b4
                to = "SEM_NIGHT_CLOCK_BACKGROUND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8de
                to = "SEM_CARMODE_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8df
                to = "SEM_CARMODE_BAR_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8e0
                to = "SEM_CONVENTIONAL_RATIO_CHANGE_GUIDE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8e1
                to = "SEM_NAVIBAR_TOUCH_INTERCEPT_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8e8
                to = "SEM_STATUS_BAR_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8e9
                to = "SEM_STATUS_BAR_PANEL_USER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x960
                to = "SEM_CLIPBOARD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x961
                to = "SEM_AIR_COMMAND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x962
                to = "SEM_PENTASTIC_ICON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x963
                to = "SEM_PENTASTIC_ANIM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x964
                to = "SEM_KNOX_KEYGUARD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x965
                to = "SEM_WINDOW_FOR_UNIVERSAL_VIEW"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x966
                to = "SEM_POPUP_PLAYER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x967
                to = "SEM_INTERNAL_PRESENTATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x968
                to = "SEM_SCREENSHOT_EFFECT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x969
                to = "SEM_SHARED_DEVICE_KEYGUARD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x96a
                to = "SEM_DOZE_DREAM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x96b
                to = "SEM_GLOBAL_ACTION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x96c
                to = "SEM_SYSTEM_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x96d
                to = "SEM_FLOATING_APPLICATION_WINDOW"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x96e
                to = "SEM_BIXBY_CLIENT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x96f
                to = "SEM_STATUS_BAR_WIDGET"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x974
                to = "SEM_TOUCH_PAD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x975
                to = "SEM_DEX_INTERNAL_PRESENTATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x97e
                to = "SEM_GAME_TOOL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x97f
                to = "SEM_GAME_TOOL_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x988
                to = "SEM_SMART_SELECT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x989
                to = "SEM_SCROLL_CAPTURE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x98a
                to = "SEM_AIR_TRANSLATOR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x834
                to = "SEM_VR_POPUP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x834
                to = "VR_POPUP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x835
                to = "SEM_VR_MODE_TRANSITION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x835
                to = "VR_MODE_TRANSITION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x836
                to = "SEM_VR_BACKGROUND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x836
                to = "VR_BACKGROUND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xa28
                to = "ONE_HAND_OP_CONTROLLER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xa29
                to = "ONE_HAND_OP_HANDLER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xa2a
                to = "MULTIWINDOW_GESTURE_GUIDE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xa2b
                to = "MULTIWINDOW_DOCK_DIVIDER_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xa2c
                to = "MULTIWINDOW_MINIMIZE_CONTAINER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xa2d
                to = "MULTIWINDOW_SNAP_VIEW"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xa2e
                to = "MULTIWINDOW_RESIZE_GUIDE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xa2f
                to = "MULTIWINDOW_DOCK_DIVIDER_CLOSE_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xa30
                to = "MULTIWINDOW_DOCK_DIVIDER_PANEL_DIM_LAYER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xa32
                to = "TYPE_STATUS_BAR_ON_SECONDARY_DISPLAY"
            .end subannotation
        }
    .end annotation
.end field

.field public userActivityTimeout:J

.field public verticalMargin:F

.field public verticalWeight:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public windowAnimations:I

.field public x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/WindowManager$LayoutParams$1;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams$1;-><init>()V

    sput-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasRemoteWindowAnimationAdapter:Z

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->remoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->navigationBarIconColor:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    const/4 v1, 0x2

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasRemoteWindowAnimationAdapter:Z

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->remoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->navigationBarIconColor:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 7

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasRemoteWindowAnimationAdapter:Z

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->remoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->navigationBarIconColor:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 7

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasRemoteWindowAnimationAdapter:Z

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->remoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->navigationBarIconColor:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasRemoteWindowAnimationAdapter:Z

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->remoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->navigationBarIconColor:I

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput p4, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput p5, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasRemoteWindowAnimationAdapter:Z

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->remoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->navigationBarIconColor:I

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p4, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p5, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput p6, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput p7, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/4 v3, -0x1

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasRemoteWindowAnimationAdapter:Z

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->remoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->navigationBarIconColor:I

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->navigationBarIconColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    nop

    :cond_3
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasRemoteWindowAnimationAdapter:Z

    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasRemoteWindowAnimationAdapter:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/view/RemoteWindowAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->remoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    :cond_4
    return-void
.end method

.method private static inputFeatureToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "NO_INPUT_CHANNEL"

    return-object v0

    :pswitch_1
    const-string v0, "DISABLE_POINTER_GESTURES"

    return-object v0

    :cond_0
    const-string v0, "DISABLE_USER_ACTIVITY"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isSystemAlertWindowType(I)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7d2 -> :sswitch_0
        0x7d3 -> :sswitch_0
        0x7d6 -> :sswitch_0
        0x7d7 -> :sswitch_0
        0x7da -> :sswitch_0
        0x7f6 -> :sswitch_0
    .end sparse-switch
.end method

.method private static layoutInDisplayCutoutModeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "never"

    return-object v0

    :pswitch_1
    const-string v0, "always"

    return-object v0

    :pswitch_2
    const-string v0, "default"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static mayUseInputMethod(I)Z
    .locals 2

    const v0, 0x20008

    and-int v1, p0, v0

    if-eqz v1, :cond_0

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static rotationAnimationToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "SEAMLESS"

    return-object v0

    :pswitch_1
    const-string v0, "JUMPCUT"

    return-object v0

    :pswitch_2
    const-string v0, "CROSSFADE"

    return-object v0

    :pswitch_3
    const-string v0, "ROTATE"

    return-object v0

    :pswitch_4
    const-string v0, "UNSPECIFIED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static softInputModeToString(I)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x20

    if-eqz v1, :cond_0

    const-string/jumbo v3, "state="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    packed-switch v1, :pswitch_data_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_0
    const-string v3, "always_visible"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string/jumbo v3, "visible"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string v3, "always_hidden"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    const-string/jumbo v3, "hidden"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_4
    const-string/jumbo v3, "unchanged"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit16 v3, p0, 0xf0

    if-eqz v3, :cond_4

    const-string v4, "adjust="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x10

    if-eq v3, v4, :cond_3

    if-eq v3, v2, :cond_2

    const/16 v4, 0x30

    if-eq v3, v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string/jumbo v4, "nothing"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "pan"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "resize"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit16 v4, p0, 0x100

    if-eqz v4, :cond_5

    const-string v4, "forwardNavigation"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final addRemoteWindowAnimationAdapter(Lcom/samsung/android/view/RemoteWindowAnimationAdapter;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasRemoteWindowAnimationAdapter:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasRemoteWindowAnimationAdapter:Z

    iput-object p1, p0, Landroid/view/WindowManager$LayoutParams;->remoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasRemoteWindowAnimationAdapter:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->remoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    :cond_1
    :goto_0
    return-void
.end method

.method backup()V
    .locals 3

    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    if-nez v0, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    move-object v0, v1

    :cond_0
    const/4 v1, 0x0

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    aput v2, v0, v1

    return-void
.end method

.method public final copyFrom(Landroid/view/WindowManager$LayoutParams;)I
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v1, v2, :cond_0

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    or-int/lit8 v0, v0, 0x1

    :cond_0
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v1, v2, :cond_1

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    or-int/lit8 v0, v0, 0x1

    :cond_1
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v1, v2, :cond_2

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    or-int/lit8 v0, v0, 0x1

    :cond_2
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v1, v2, :cond_3

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    or-int/lit8 v0, v0, 0x1

    :cond_3
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    or-int/lit8 v0, v0, 0x1

    :cond_4
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    or-int/lit8 v0, v0, 0x1

    :cond_5
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_6

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    or-int/lit8 v0, v0, 0x1

    :cond_6
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_7

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    or-int/lit8 v0, v0, 0x1

    :cond_7
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v2, :cond_8

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    or-int/lit8 v0, v0, 0x2

    :cond_8
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v2, :cond_a

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/2addr v1, v2

    const/high16 v2, 0xc000000

    and-int/2addr v2, v1

    if-eqz v2, :cond_9

    const/high16 v2, 0x80000

    or-int/2addr v0, v2

    :cond_9
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x4

    :cond_a
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    if-eq v1, v2, :cond_b

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    :cond_b
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-eq v1, v2, :cond_c

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit16 v0, v0, 0x200

    :cond_c
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq v1, v2, :cond_d

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    or-int/lit8 v0, v0, 0x1

    :cond_d
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v1, v2, :cond_e

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    or-int/lit8 v0, v0, 0x1

    :cond_e
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    if-eq v1, v2, :cond_f

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    or-int/lit8 v0, v0, 0x8

    :cond_f
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v1, v2, :cond_10

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    or-int/lit8 v0, v0, 0x10

    :cond_10
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v1, :cond_11

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :cond_11
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v1, :cond_12

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :cond_12
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->remoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    if-nez v1, :cond_13

    iget-boolean v1, p1, Landroid/view/WindowManager$LayoutParams;->hasRemoteWindowAnimationAdapter:Z

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasRemoteWindowAnimationAdapter:Z

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->remoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->remoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    :cond_13
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_14

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    or-int/lit8 v0, v0, 0x40

    :cond_14
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_15

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    or-int/lit16 v0, v0, 0x80

    :cond_15
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_16

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    or-int/lit8 v0, v0, 0x20

    :cond_16
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_17

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    or-int/lit16 v0, v0, 0x800

    :cond_17
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_18

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    or-int/lit16 v0, v0, 0x2000

    :cond_18
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    if-eq v1, v2, :cond_19

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    or-int/lit16 v0, v0, 0x1000

    :cond_19
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    if-eq v1, v2, :cond_1a

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    or-int/lit16 v0, v0, 0x400

    :cond_1a
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1b

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    :cond_1b
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-eq v1, v2, :cond_1c

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    :cond_1c
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    if-ne v1, v2, :cond_1d

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    if-eq v1, v2, :cond_1e

    :cond_1d
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/lit16 v0, v0, 0x4000

    :cond_1e
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eq v1, v2, :cond_1f

    iget-boolean v1, p1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    const v1, 0x8000

    or-int/2addr v0, v1

    :cond_1f
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    if-eq v1, v2, :cond_20

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    :cond_20
    iget-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iget-wide v3, p1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_21

    iget-wide v1, p1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    :cond_21
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x100000

    if-nez v1, :cond_22

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    or-int/2addr v0, v2

    :cond_22
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    iget-boolean v3, p1, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    if-eq v1, v3, :cond_23

    iget-boolean v1, p1, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    or-int/2addr v0, v2

    :cond_23
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    iget-boolean v3, p1, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    if-eq v1, v3, :cond_24

    iget-boolean v1, p1, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    or-int/2addr v0, v2

    :cond_24
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    if-eq v1, v2, :cond_25

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    :cond_25
    iget-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    iget-wide v3, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_26

    iget-wide v1, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    :cond_26
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_27

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    :cond_27
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    if-eq v1, v2, :cond_28

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    :cond_28
    iget-wide v1, p1, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    iget-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    iget-wide v3, p1, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_29

    iget-wide v1, p1, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    or-int/lit8 v0, v0, 0x20

    :cond_29
    iget-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    iget-wide v3, p1, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2a

    iget-wide v1, p1, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    :cond_2a
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->navigationBarIconColor:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->navigationBarIconColor:I

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    if-eq v1, v2, :cond_2b

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    :cond_2b
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    if-eq v1, v2, :cond_2c

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    :cond_2c
    return v0
.end method

.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Contents of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Debug"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    invoke-super {p0, v0}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Debug"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Debug"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Debug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowManager.LayoutParams={title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dumpDimensions(Ljava/lang/StringBuilder;)V
    .locals 3

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const-string v0, "fill"

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "wrap"

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x78

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v2, :cond_2

    const-string v0, "fill"

    goto :goto_1

    :cond_2
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_3

    const-string/jumbo v0, "wrap"

    goto :goto_1

    :cond_3
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string/jumbo v0, "x"

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "y"

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "horizontalWeight"

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    const-string/jumbo v0, "verticalWeight"

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    const-string/jumbo v0, "type"

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "flags"

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    return-void
.end method

.method public getColorMode()I
    .locals 1

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    return v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final getUserActivityTimeout()J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    return-wide v0
.end method

.method public isFullscreen()Z
    .locals 2

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFullscreen(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v0

    return v0
.end method

.method restore()V
    .locals 2

    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, 0x3

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_0
    return-void
.end method

.method public scale(F)V
    .locals 2

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_0
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_1
    return-void
.end method

.method public final semAddExtensionFlags(I)V
    .locals 1

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    return-void
.end method

.method public final semAddPrivateFlags(I)V
    .locals 1

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-void
.end method

.method public final semClearExtensionFlags(I)V
    .locals 2

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    return-void
.end method

.method public final semClearPrivateFlags(I)V
    .locals 2

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-void
.end method

.method public final semSetEnterDimDuration(J)V
    .locals 0

    iput-wide p1, p0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    return-void
.end method

.method public final semSetNavigationBarIconColor(I)V
    .locals 0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->navigationBarIconColor:I

    return-void
.end method

.method public final semSetScreenDimDuration(J)V
    .locals 0

    iput-wide p1, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    return-void
.end method

.method public final semSetScreenTimeout(J)V
    .locals 0

    iput-wide p1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    return-void
.end method

.method public setColorMode(I)V
    .locals 0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    return-void
.end method

.method public final setSurfaceInsets(Landroid/view/View;ZZ)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getZ()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iput-boolean p2, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    iput-boolean p3, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setUserActivityTimeout(J)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-wide p1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->dumpDimensions(Ljava/lang/StringBuilder;)V

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    const-string v1, " hm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    const-string v1, " vm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_1
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eqz v1, :cond_2

    const-string v1, " gr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {v1}, Landroid/view/Gravity;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/16 v3, 0x7d

    if-eqz v1, :cond_3

    const-string v1, " sim={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-static {v1}, Landroid/view/WindowManager$LayoutParams;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eqz v1, :cond_4

    const-string v1, " layoutInDisplayCutoutMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-static {v1}, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, " ty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v4, "type"

    iget v5, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v1, v4, v5}, Landroid/view/ViewDebug;->intToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    const-string v1, " fmt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v1}, Landroid/graphics/PixelFormat;->formatToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v1, :cond_6

    const-string v1, " wanim=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    if-eq v1, v4, :cond_7

    const-string v1, " or="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_8

    const-string v1, " alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_8
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_9

    const-string v1, " sbrt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_9
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_a

    const-string v1, " bbrt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_a
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    if-eqz v1, :cond_b

    const-string v1, " rotAnim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    invoke-static {v1}, Landroid/view/WindowManager$LayoutParams;->rotationAnimationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_c

    const-string v1, " preferredRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_c
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-eqz v1, :cond_d

    const-string v1, " preferredDisplayMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_d
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eqz v1, :cond_e

    const-string v1, " sysuil="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_e
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    if-eqz v1, :cond_f

    const-string v1, " if="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    invoke-static {v1}, Landroid/view/WindowManager$LayoutParams;->inputFeatureToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    iget-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-ltz v1, :cond_10

    const-string v1, " userActivityTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_10
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_11

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_11

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_11

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-nez v1, :cond_11

    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    if-nez v1, :cond_11

    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    if-nez v1, :cond_13

    :cond_11
    const-string v1, " surfaceInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    if-eqz v1, :cond_12

    const-string v1, " (manual)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    if-nez v1, :cond_13

    const-string v1, " (!preservePreviousSurfaceInsets)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    const-string v1, " needsMenuKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    if-eqz v1, :cond_15

    const-string v1, " colorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->colorModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  fl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Landroid/view/WindowManager$LayoutParams;

    const-string v2, "flags"

    iget v6, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v1, v2, v6}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    if-eqz v1, :cond_16

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  pfl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v2, "privateFlags"

    iget v6, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-static {v1, v2, v6}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    if-eqz v1, :cond_17

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  sysui="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Landroid/view/View;

    const-string/jumbo v2, "mSystemUiVisibility"

    iget v6, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-static {v1, v2, v6}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    if-eqz v1, :cond_18

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  vsysui="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Landroid/view/View;

    const-string/jumbo v2, "mSystemUiVisibility"

    iget v6, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    invoke-static {v1, v2, v6}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    iget-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    cmp-long v1, v1, v4

    if-ltz v1, :cond_19

    const-string v1, " dimDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_19
    iget-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    cmp-long v1, v1, v4

    if-ltz v1, :cond_1a

    const-string v1, " screenDimDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_1a
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->navigationBarIconColor:I

    if-ltz v1, :cond_1b

    const-string v1, " naviIconColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->navigationBarIconColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1b
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    if-eqz v1, :cond_1c

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  sfl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v2, "samsungFlags"

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    invoke-static {v1, v2, v4}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    if-eqz v1, :cond_1d

    const-string v1, " cm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1d
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->remoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    if-eqz v1, :cond_1e

    const-string v1, " remoteWinAnimAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->remoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->navigationBarIconColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasRemoteWindowAnimationAdapter:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasRemoteWindowAnimationAdapter:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->remoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/view/RemoteWindowAnimationAdapter;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_0
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    const-wide v3, 0x10500000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    const-wide v3, 0x10500000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    const-wide v3, 0x10200000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    const-wide v3, 0x10200000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-wide v3, 0x10500000008L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const-wide v3, 0x10500000009L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    const-wide v3, 0x10e0000000aL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const-wide v3, 0x1050000000bL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const-wide v3, 0x1020000000cL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const-wide v3, 0x1020000000dL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    const-wide v3, 0x1020000000eL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const-wide v3, 0x10e0000000fL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    const-wide v3, 0x10200000010L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    const-wide v3, 0x10500000011L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    const-wide v3, 0x10800000012L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    const-wide v3, 0x10d00000013L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide v4, 0x10300000014L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    const-wide v3, 0x10e00000016L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    const-wide v3, 0x10e00000017L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-wide v3, 0x10d00000018L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-wide v3, 0x10d0000001aL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const-wide v3, 0x10d0000001bL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    const-wide v3, 0x10d0000001cL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
