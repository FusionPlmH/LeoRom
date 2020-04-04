.class public Lcom/samsung/android/multiwindow/MultiWindowCoreState;
.super Ljava/lang/Object;
.source "MultiWindowCoreState.java"

# interfaces
.implements Lcom/samsung/android/app/CoreState;


# static fields
.field public static CORNER_GESTURE_DYNAMIC_ENABLED:Z = false

.field public static final KEY_CORNER_GESTURE_ENABLED:Ljava/lang/String; = "corner_gesture"

.field public static final KEY_MULTI_RESUME_ENABLED:Ljava/lang/String; = "multi_resume"

.field public static final KEY_MW_ENABLED:Ljava/lang/String; = "mw_enabled"

.field public static final KEY_MW_SNAP_WINDOW_ENABLED:Ljava/lang/String; = "mw_snap_window_enabled"

.field public static final KEY_STAY_FOCUS_ACTIVITY:Ljava/lang/String; = "stay_focus_activity"

.field public static MULTI_RESUME_DYNAMIC_ENABLED:Z = false

.field public static MW_ENABLED:Z = false

.field public static final MW_SHARED_PREF_NAME:Ljava/lang/String; = "multiwindow.property"

.field public static MW_SNAP_WINDOW_DYNAMIC_ENABLED:Z = false

.field public static STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED:Z = false

.field public static final TAG:Ljava/lang/String; = "MultiWindowCoreState"

.field public static final UPDATE_CORNER_GESTURE_DYNAMIC_ENALBED:I = 0x8

.field public static final UPDATE_MULTI_RESUME_DYNAMIC_ENALBED:I = 0x2

.field public static final UPDATE_MW_ENABLED:I = 0x1

.field public static final UPDATE_MW_SNAP_WINDOW_ENABLED:I = 0x4

.field public static final UPDATE_STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED:I = 0x20

.field private static sInstance:Lcom/samsung/android/multiwindow/MultiWindowCoreState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MULTI_RESUME_DYNAMIC_ENABLED:Z

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SNAP_WINDOW_DYNAMIC_ENABLED:Z

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->CORNER_GESTURE_DYNAMIC_ENABLED:Z

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/multiwindow/MultiWindowCoreState;
    .locals 1

    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->sInstance:Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->sInstance:Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    :cond_0
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->sInstance:Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    return-object v0
.end method


# virtual methods
.method public updateFrom(Landroid/os/Bundle;)I
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MULTI_RESUME_DYNAMIC_ENABLED:Z

    sget-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SNAP_WINDOW_DYNAMIC_ENABLED:Z

    sget-boolean v4, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->CORNER_GESTURE_DYNAMIC_ENABLED:Z

    sget-boolean v5, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED:Z

    const-string/jumbo v6, "mw_enabled"

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_1

    move v6, v7

    goto :goto_0

    :cond_1
    move v6, v0

    :goto_0
    sput-boolean v6, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    sget-boolean v6, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "multi_resume"

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_2

    move v6, v7

    goto :goto_1

    :cond_2
    move v6, v0

    :goto_1
    sput-boolean v6, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MULTI_RESUME_DYNAMIC_ENABLED:Z

    sget-boolean v6, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    if-eqz v6, :cond_3

    const-string/jumbo v6, "mw_snap_window_enabled"

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_3

    move v6, v7

    goto :goto_2

    :cond_3
    move v6, v0

    :goto_2
    sput-boolean v6, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SNAP_WINDOW_DYNAMIC_ENABLED:Z

    sget-boolean v6, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    if-eqz v6, :cond_4

    const-string v6, "corner_gesture"

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_4

    move v6, v7

    goto :goto_3

    :cond_4
    move v6, v0

    :goto_3
    sput-boolean v6, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->CORNER_GESTURE_DYNAMIC_ENABLED:Z

    sget-boolean v6, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MULTI_RESUME_DYNAMIC_ENABLED:Z

    if-eqz v6, :cond_5

    const-string/jumbo v6, "stay_focus_activity"

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_5

    move v0, v7

    nop

    :cond_5
    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED:Z

    const/4 v0, 0x0

    sget-boolean v6, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    if-eq v6, v1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    sget-boolean v6, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MULTI_RESUME_DYNAMIC_ENABLED:Z

    if-eq v6, v2, :cond_7

    or-int/lit8 v0, v0, 0x2

    :cond_7
    sget-boolean v6, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SNAP_WINDOW_DYNAMIC_ENABLED:Z

    if-eq v6, v3, :cond_8

    or-int/lit8 v0, v0, 0x4

    :cond_8
    sget-boolean v6, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->CORNER_GESTURE_DYNAMIC_ENABLED:Z

    if-eq v6, v4, :cond_9

    or-int/lit8 v0, v0, 0x8

    :cond_9
    sget-boolean v6, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED:Z

    if-eq v6, v5, :cond_a

    or-int/lit8 v0, v0, 0x20

    :cond_a
    return v0
.end method
