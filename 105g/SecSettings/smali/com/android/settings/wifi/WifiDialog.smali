.class public Lcom/android/settings/wifi/WifiDialog;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings/wifi/WifiConfigUiBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;
    }
.end annotation


# static fields
.field public static mIsShow:Z

.field private static final mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;


# instance fields
.field public isSetupWizard:Z

.field private final mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

.field private final mArgs:Landroid/os/Bundle;

.field private mButtonTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/settings/wifi/WifiConfigController;

.field private mHideSubmitButton:Z

.field private mIsVzwDialog:Z

.field private final mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

.field private final mMode:I

.field private mSAScreenId:I

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getInstance()Lcom/samsung/android/net/wifi/OpBrandingLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getOpBranding()Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiDialog;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WifiDialog;->mIsShow:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/samsung/android/settingslib/wifi/AccessPoint;IIZ)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/samsung/android/settingslib/wifi/AccessPoint;IIZLandroid/os/Bundle;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/samsung/android/settingslib/wifi/AccessPoint;IIZLandroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1, p5}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mButtonTypes:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiDialog;->mIsVzwDialog:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiDialog;->isSetupWizard:Z

    iput p4, p0, Lcom/android/settings/wifi/WifiDialog;->mMode:I

    iput-object p2, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    iput-boolean p6, p0, Lcom/android/settings/wifi/WifiDialog;->mHideSubmitButton:Z

    iput-object p7, p0, Lcom/android/settings/wifi/WifiDialog;->mArgs:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/samsung/android/settingslib/wifi/AccessPoint;I)Lcom/android/settings/wifi/WifiDialog;
    .locals 8

    new-instance v7, Lcom/android/settings/wifi/WifiDialog;

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/samsung/android/settingslib/wifi/AccessPoint;IIZ)V

    return-object v7
.end method

.method private getButtonType(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mButtonTypes:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v1, 0x5

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method


# virtual methods
.method public dispatchSubmit()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    invoke-interface {v0, p0}, Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;->onConnect(Lcom/android/settings/wifi/WifiDialog;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    return-void
.end method

.method public getButtonCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mButtonTypes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getButtonFromType(I)Landroid/widget/Button;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mButtonTypes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mButtonTypes:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getController()Lcom/android/settings/wifi/WifiConfigController;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiDialog;->getButtonType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSAScreenId:I

    const v1, 0x7f120920

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    invoke-interface {v0, p0}, Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;->onDisable(Lcom/android/settings/wifi/WifiDialog;)V

    goto/16 :goto_0

    :pswitch_1
    iget v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSAScreenId:I

    const v1, 0x7f120911

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :pswitch_2
    iget v0, p0, Lcom/android/settings/wifi/WifiDialog;->mMode:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSAScreenId:I

    const v1, 0x7f120922

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    invoke-interface {v0, p0}, Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;->onForget(Lcom/android/settings/wifi/WifiDialog;)V

    goto :goto_0

    :pswitch_3
    nop

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSAScreenId:I

    const v1, 0x7f120921

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    invoke-interface {v0, p0}, Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;->onEdit(Lcom/android/settings/wifi/WifiDialog;)V

    goto :goto_0

    :pswitch_4
    iget v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSAScreenId:I

    const v1, 0x7f120930

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    invoke-interface {v0, p0}, Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;->onSave(Lcom/android/settings/wifi/WifiDialog;)V

    goto :goto_0

    :pswitch_5
    iget v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSAScreenId:I

    const v1, 0x7f120912

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    invoke-interface {v0, p0}, Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;->onConnect(Lcom/android/settings/wifi/WifiDialog;)V

    nop

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d03dc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/WifiDialog;->mIsShow:Z

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiDialog;->setView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->setInverseBackgroundForced(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mButtonTypes:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    sget-object v1, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->VZW:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    sget-object v2, Lcom/android/settings/wifi/WifiDialog;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    if-ne v1, v2, :cond_0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiDialog;->mIsVzwDialog:Z

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    instance-of v1, v1, Lcom/android/settings/wifi/WifiDialogActivity;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "firstRun"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiDialog;->isSetupWizard:Z

    :cond_2
    new-instance v0, Lcom/android/settings/wifi/WifiConfigController;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    iget v6, p0, Lcom/android/settings/wifi/WifiDialog;->mMode:I

    iget-object v7, p0, Lcom/android/settings/wifi/WifiDialog;->mArgs:Landroid/os/Bundle;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/wifi/WifiConfigController;-><init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/samsung/android/settingslib/wifi/AccessPoint;ILandroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiDialog;->mHideSubmitButton:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->hideSubmitButton()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/settings/wifi/WifiDialog;->mMode:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/settings/Utils;->REMOVABLE_DEFAULT_AP:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isVendorAp()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->hideForgetButton()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->hideEditButton()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->hideForgetButton()V

    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mArgs:Landroid/os/Bundle;

    const v1, 0x7f1212f6

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mArgs:Landroid/os/Bundle;

    const-string v2, "screen_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSAScreenId:I

    goto :goto_2

    :cond_9
    iput v1, p0, Lcom/android/settings/wifi/WifiDialog;->mSAScreenId:I

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->updatePassword()V

    return-void
.end method

.method protected onStart()V
    .locals 4

    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    iget v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSAScreenId:I

    iget v1, p0, Lcom/android/settings/wifi/WifiDialog;->mMode:I

    int-to-long v1, v1

    const v3, 0x7f12091f

    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WifiDialog;->mIsShow:Z

    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mButtonTypes:Ljava/util/HashMap;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiDialog;->mIsVzwDialog:Z

    const/4 v2, -0x2

    const/4 v3, -0x3

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiDialog;->mIsVzwDialog:Z

    if-eqz v0, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-virtual {p0, v2, p1, p0}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mButtonTypes:Ljava/util/HashMap;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiDialog;->mIsVzwDialog:Z

    const/4 v2, -0x3

    const/4 v3, -0x2

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiDialog;->mIsVzwDialog:Z

    if-eqz v0, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-virtual {p0, v2, p1, p0}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mButtonTypes:Ljava/util/HashMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, p0}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
