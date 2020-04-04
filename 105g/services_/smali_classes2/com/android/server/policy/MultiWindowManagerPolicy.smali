.class public interface abstract Lcom/android/server/policy/MultiWindowManagerPolicy;
.super Ljava/lang/Object;
.source "MultiWindowManagerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/MultiWindowManagerPolicy$MultiWindowManagerInternalFuncs;
    }
.end annotation


# direct methods
.method public static isDividerFamily(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xa2b
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static windowTypeToLayerLw(I)I
    .locals 1

    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, -0x1

    return v0

    :pswitch_1
    const/4 v0, 0x7

    return v0

    :pswitch_2
    const/16 v0, 0x10

    return v0

    :pswitch_3
    return v0

    :pswitch_4
    const/16 v0, 0xb

    return v0

    :pswitch_5
    const/4 v0, 0x3

    return v0

    :pswitch_6
    return v0

    :pswitch_7
    const/16 v0, 0x15

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xa2a
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public abstract init(Lcom/android/server/policy/MultiWindowManagerPolicy$MultiWindowManagerInternalFuncs;Lcom/android/server/policy/WindowManagerPolicy;)V
.end method

.method public abstract isLockTaskModeEnabled()Z
.end method

.method public abstract isQuickPanelExpanded()Z
.end method
