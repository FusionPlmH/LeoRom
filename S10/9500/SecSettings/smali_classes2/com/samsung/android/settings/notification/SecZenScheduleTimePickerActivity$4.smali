.class Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$4;
.super Ljava/lang/Object;
.source "SecZenScheduleTimePickerActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$4;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$4;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->access$700(Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$4;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->access$700(Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method
