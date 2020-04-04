.class public Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$CycleEditorFragment;
.super Landroid/app/DialogFragment;
.source "BillingCycleChnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleEditorFragment"
.end annotation


# instance fields
.field private mCycleDayPicker:Lcom/samsung/android/widget/SemNumberPicker;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "template"

    invoke-static {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->access$000(Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;)Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$CycleEditorFragment;

    invoke-direct {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$CycleEditorFragment;-><init>()V

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$CycleEditorFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$CycleEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DatePickDialog"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$CycleEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$CycleEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$CycleEditorFragment;->mCycleDayPicker:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->clearFocus()V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$CycleEditorFragment;->mCycleDayPicker:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getValue()I

    move-result v1

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->access$100(Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;)Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set_package_start_date"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->putInt(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->access$200(Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$CycleEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set_package_start_date"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$CycleEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0170

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$CycleEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b016a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$CycleEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v2, v3, v1}, Lcom/android/settings/Utils;->sendSmartManagerEventWithValueLog(Landroid/content/Context;III)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$CycleEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$CycleEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->access$300(Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;)Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f0d005f

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a01f0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/widget/SemNumberPicker;

    iput-object v7, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$CycleEditorFragment;->mCycleDayPicker:Lcom/samsung/android/widget/SemNumberPicker;

    const v7, 0x7f0a0850

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v0, v7}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$CycleEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "template"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v8}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyCycleDay(Landroid/net/NetworkTemplate;)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$CycleEditorFragment;->mCycleDayPicker:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$CycleEditorFragment;->mCycleDayPicker:Lcom/samsung/android/widget/SemNumberPicker;

    const/16 v12, 0x1f

    invoke-virtual {v10, v12}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$CycleEditorFragment;->mCycleDayPicker:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v10, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setValue(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$CycleEditorFragment;->mCycleDayPicker:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v10, v11}, Lcom/samsung/android/widget/SemNumberPicker;->setWrapSelectorWheel(Z)V

    const v10, 0x7f1205f5

    invoke-virtual {v3, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f1205f3

    invoke-virtual {v10, v11, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/high16 v11, 0x1040000

    invoke-virtual {v10, v11, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method
