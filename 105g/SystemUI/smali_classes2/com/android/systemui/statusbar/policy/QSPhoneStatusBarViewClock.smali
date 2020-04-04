.class public Lcom/android/systemui/statusbar/policy/QSPhoneStatusBarViewClock;
.super Lcom/android/systemui/statusbar/policy/QSClock;
.source "QSPhoneStatusBarViewClock.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClock;-><init>(Landroid/content/Context;)V
invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSPhoneStatusBarViewClock;->ScaleChanged()V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QSClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSPhoneStatusBarViewClock;->ScaleChanged()V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/QSClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSPhoneStatusBarViewClock;->ScaleChanged()V
    return-void
.end method



.method public ScaleChanged()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QSClock;->setTextSize(F)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QSClock;->setVisibility(I)V
	
    return-void
.end method
