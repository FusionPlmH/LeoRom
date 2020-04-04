.class public Lcom/samsung/android/settings/helpdialog/TwHelpDialog;
.super Landroid/app/Dialog;
.source "TwHelpDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;
    }
.end annotation


# instance fields
.field private fPunchEvent:Z

.field private mShowWrongInputToast:Z

.field private mTouchTransparencyMode:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

.field private mWrongInputToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const v0, 0x7f1302d8

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sget-object v0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    iput-object v0, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    sget-object v3, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    iput-object v3, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    const v3, 0x7f122002

    invoke-static {p1, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    iput-boolean v0, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    iput-boolean v1, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    :cond_1
    sget-object v2, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$1;->$SwitchMap$com$samsung$android$settings$helpdialog$TwHelpDialog$TouchMode:[I

    iget-object v3, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v3}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x0

    const v6, 0x7f0a0369

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :pswitch_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    if-eqz v2, :cond_5

    if-eq v0, v4, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    if-nez v0, :cond_3

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    goto :goto_0

    :cond_3
    if-ne v0, v1, :cond_a

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    goto :goto_0

    :cond_5
    iget-boolean v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    if-eqz v2, :cond_a

    if-eq v0, v4, :cond_a

    iget-object v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    iget-boolean v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    if-nez v0, :cond_7

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    goto :goto_0

    :cond_7
    if-ne v0, v1, :cond_a

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    goto :goto_0

    :cond_9
    iget-boolean v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_a
    :goto_0
    if-eq v0, v1, :cond_b

    const/4 v1, 0x6

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    if-eqz v0, :cond_c

    const/4 v1, 0x5

    if-eq v0, v1, :cond_c

    if-eq v0, v4, :cond_c

    :cond_b
    iput-boolean v5, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    :cond_c
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setShowWrongInputToast(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    return-void
.end method

.method public setTouchTransparencyMode(Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    return-void
.end method
