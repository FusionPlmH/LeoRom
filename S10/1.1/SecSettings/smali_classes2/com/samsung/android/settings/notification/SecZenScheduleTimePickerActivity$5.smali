.class Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$5;
.super Ljava/lang/Object;
.source "SecZenScheduleTimePickerActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->animateSliding(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;

.field final synthetic val$clockTimeContainer:Landroid/widget/LinearLayout;

.field final synthetic val$mode:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;Landroid/widget/LinearLayout;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$5;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;

    iput-object p2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$5;->val$clockTimeContainer:Landroid/widget/LinearLayout;

    iput-boolean p3, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$5;->val$mode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$5;->val$clockTimeContainer:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$5;->val$mode:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
