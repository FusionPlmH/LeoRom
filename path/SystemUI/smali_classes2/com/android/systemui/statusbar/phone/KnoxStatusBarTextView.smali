.class public Lcom/android/systemui/statusbar/phone/KnoxStatusBarTextView;
.super Landroid/widget/TextView;
.source "KnoxStatusBarTextView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic lambda$onAttachedToWindow$0(Lcom/android/systemui/statusbar/phone/KnoxStatusBarTextView;)V
    .locals 1

    const v0, -0x42000001    # -0.12499999f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KnoxStatusBarTextView;->setTextColor(I)V

    return-void
.end method

.method public static synthetic lambda$onDarkChanged$1(Lcom/android/systemui/statusbar/phone/KnoxStatusBarTextView;Landroid/graphics/Rect;I)V
    .locals 1

    invoke-static {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KnoxStatusBarTextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$KnoxStatusBarTextView$LjP-KkWeLSTZeKV53LFKgRs227A;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$KnoxStatusBarTextView$LjP-KkWeLSTZeKV53LFKgRs227A;-><init>(Lcom/android/systemui/statusbar/phone/KnoxStatusBarTextView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KnoxStatusBarTextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$KnoxStatusBarTextView$IW193FcUAtkqxgd71_wEPwVMC_E;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/systemui/statusbar/phone/-$$Lambda$KnoxStatusBarTextView$IW193FcUAtkqxgd71_wEPwVMC_E;-><init>(Lcom/android/systemui/statusbar/phone/KnoxStatusBarTextView;Landroid/graphics/Rect;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KnoxStatusBarTextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    return-void
.end method
