.class public Lcom/samsung/android/multiwindow/SideScreenCoreState;
.super Ljava/lang/Object;
.source "SideScreenCoreState.java"

# interfaces
.implements Lcom/samsung/android/app/CoreState;


# static fields
.field public static final KEY_MENU_MODE_ON_PRIMARY:Ljava/lang/String; = "menu_mode_on_primary"

.field public static final KEY_MENU_MODE_ON_SECONDARY:Ljava/lang/String; = "menu_mode_on_secondary"

.field public static final KEY_SLIDEOVER_DEFAULT:Ljava/lang/String; = "slideover_default"

.field public static MENU_MODE_ON_PRIMARY:I = 0x0

.field public static MENU_MODE_ON_SECONDARY:I = 0x0

.field public static SLIDEOVER_DEFAULT:Z = false

.field public static final TAG:Ljava/lang/String; = "SideScreenCoreState"

.field public static final UPDATE_MENU_MODE_ON_PRIMARY:I = 0x1

.field public static final UPDATE_MENU_MODE_ON_SECONDARY:I = 0x2

.field public static final UPDATE_SLIDEOVER_DEFAULT:I = 0x4

.field private static sInstance:Lcom/samsung/android/multiwindow/SideScreenCoreState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/multiwindow/SideScreenCoreState;->MENU_MODE_ON_PRIMARY:I

    sput v0, Lcom/samsung/android/multiwindow/SideScreenCoreState;->MENU_MODE_ON_SECONDARY:I

    sput-boolean v0, Lcom/samsung/android/multiwindow/SideScreenCoreState;->SLIDEOVER_DEFAULT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/multiwindow/SideScreenCoreState;
    .locals 1

    sget-object v0, Lcom/samsung/android/multiwindow/SideScreenCoreState;->sInstance:Lcom/samsung/android/multiwindow/SideScreenCoreState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/multiwindow/SideScreenCoreState;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/SideScreenCoreState;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/SideScreenCoreState;->sInstance:Lcom/samsung/android/multiwindow/SideScreenCoreState;

    :cond_0
    sget-object v0, Lcom/samsung/android/multiwindow/SideScreenCoreState;->sInstance:Lcom/samsung/android/multiwindow/SideScreenCoreState;

    return-object v0
.end method

.method public static isMenuModeChanged(I)Z
    .locals 1

    and-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPrimaryMenuModeChanged(I)Z
    .locals 1

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSecondaryMenuModeChanged(I)Z
    .locals 1

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public updateFrom(Landroid/os/Bundle;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget v1, Lcom/samsung/android/multiwindow/SideScreenCoreState;->MENU_MODE_ON_PRIMARY:I

    sget v2, Lcom/samsung/android/multiwindow/SideScreenCoreState;->MENU_MODE_ON_SECONDARY:I

    sget-boolean v3, Lcom/samsung/android/multiwindow/SideScreenCoreState;->SLIDEOVER_DEFAULT:Z

    const-string/jumbo v4, "menu_mode_on_primary"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/samsung/android/multiwindow/SideScreenCoreState;->MENU_MODE_ON_PRIMARY:I

    const-string/jumbo v4, "menu_mode_on_secondary"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/samsung/android/multiwindow/SideScreenCoreState;->MENU_MODE_ON_SECONDARY:I

    const-string/jumbo v4, "slideover_default"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/multiwindow/SideScreenCoreState;->SLIDEOVER_DEFAULT:Z

    const/4 v0, 0x0

    sget v4, Lcom/samsung/android/multiwindow/SideScreenCoreState;->MENU_MODE_ON_PRIMARY:I

    if-eq v4, v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    sget v4, Lcom/samsung/android/multiwindow/SideScreenCoreState;->MENU_MODE_ON_SECONDARY:I

    if-eq v4, v2, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    sget-boolean v4, Lcom/samsung/android/multiwindow/SideScreenCoreState;->SLIDEOVER_DEFAULT:Z

    if-eq v4, v3, :cond_3

    or-int/lit8 v0, v0, 0x4

    :cond_3
    return v0
.end method
