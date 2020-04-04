.class public Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment;
.super Landroid/app/DialogFragment;
.source "TRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/TRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkNotAvailableFragment"
.end annotation


# instance fields
.field private mCustomerCenterCall:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment$2;-><init>(Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment;->mCustomerCenterCall:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static show(Lcom/samsung/android/settings/TRoamingSettings;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment;

    invoke-direct {v0}, Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "NetworkNotAvaiable"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/samsung/android/settings/TRoamingSettings;->access$800()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/settings/TRoamingSettings;->access$800()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0d0260

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f121224

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0a04df

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment;->mCustomerCenterCall:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment$1;-><init>(Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment;)V

    const v5, 0x7f12076a

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
