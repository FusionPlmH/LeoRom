.class public Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;
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
    name = "BytesEditorFragment"
.end annotation


# instance fields
.field private mBytesField:Landroid/widget/EditText;

.field private mSpinner:Landroid/widget/Spinner;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private setupPicker(Landroid/widget/EditText;Landroid/widget/Spinner;)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120e1d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120aae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d0060

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

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

    new-instance v1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;

    invoke-direct {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;-><init>()V

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DataLimitDialog"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dismissSpinnerPopup()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "template"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    const-string v1, "0"

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->mBytesField:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->mBytesField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "0"

    :cond_2
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0170

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b016e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-static {v5, v3, v4, v6}, Lcom/android/settings/Utils;->sendSmartManagerEventWithDetailLog(Landroid/content/Context;III)V

    const v5, 0x51ba43b7    # 9.9999998E10f

    cmpl-float v5, v2, v5

    if-lez v5, :cond_4

    const v2, 0x51ba43b7    # 9.9999998E10f

    :cond_4
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->access$100(Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;)Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set_data_limit"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->access$100(Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;)Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    move-result-object v5

    const v6, 0x49742400    # 1000000.0f

    mul-float/2addr v6, v2

    float-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->updateLimitBytes(J)V

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->access$200(Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set_data_limit"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "BillingCycleChnSettings"

    const-string v1, "DataLimitEditorFragment::onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->dismissSpinnerPopup()V

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0d0059

    invoke-virtual {v1, v4, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->mView:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->mView:Landroid/view/View;

    const v5, 0x7f0a076d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->mSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->mView:Landroid/view/View;

    const v6, 0x7f0a014b

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->mBytesField:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->mBytesField:Landroid/widget/EditText;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->mBytesField:Landroid/widget/EditText;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/text/InputFilter;

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    const/16 v9, 0xa

    invoke-direct {v8, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v7, v2

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->setupPicker(Landroid/widget/EditText;Landroid/widget/Spinner;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f12060a

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f1205e7

    invoke-virtual {v2, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
