.class public Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BillingCycleSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/BillingCycleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BytesEditorFragment"
.end annotation


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private formatText(F)Ljava/lang/String;
    .locals 2

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v1, p1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setupPicker(Landroid/widget/EditText;Landroid/widget/Spinner;)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/DataUsageEditController;

    invoke-interface {v0}, Lcom/android/settings/datausage/DataUsageEditController;->getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "template"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "limit"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v4

    :goto_0
    const-wide/16 v6, -0x1

    long-to-float v8, v4

    const v9, 0x4eb2d05e    # 1.5E9f

    cmpl-float v8, v8, v9

    const/4 v9, 0x0

    if-lez v8, :cond_2

    long-to-float v8, v4

    const v10, 0x5368d4a5    # 1.0E12f

    cmpl-float v8, v8, v10

    if-lez v8, :cond_1

    const-wide v4, 0xe8d4a51000L

    :cond_1
    long-to-float v8, v4

    const v10, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v8, v10

    invoke-direct {p0, v8}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->formatText(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Landroid/widget/EditText;->setSelection(II)V

    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    :cond_2
    long-to-float v8, v4

    const v10, 0x49742400    # 1000000.0f

    div-float/2addr v8, v10

    invoke-direct {p0, v8}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->formatText(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Landroid/widget/EditText;->setSelection(II)V

    invoke-virtual {p2, v9}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_1
    return-void
.end method

.method public static show(Lcom/android/settings/datausage/BillingCycleSettings;Z)Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "template"

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getNetworkTemplate()Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "limit"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;

    invoke-direct {v1}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;-><init>()V

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "warningEditor"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x226

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, -0x1

    move/from16 v2, p2

    if-eq v2, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/DataUsageEditController;

    invoke-interface {v1}, Lcom/android/settings/datausage/DataUsageEditController;->getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "template"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "limit"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iget-object v6, v0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    const v7, 0x7f0a014e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iget-object v7, v0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    const v8, 0x7f0a0773

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    const-string v8, "0"

    :cond_2
    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    if-nez v10, :cond_3

    const-wide/32 v10, 0xf4240

    goto :goto_0

    :cond_3
    const-wide/32 v10, 0x3b9aca00

    :goto_0
    long-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-long v9, v9

    long-to-float v11, v9

    const v12, 0x5368d4a5    # 1.0E12f

    cmpl-float v11, v11, v12

    if-lez v11, :cond_4

    const-wide v9, 0xe8d4a51000L

    :cond_4
    const-wide/16 v11, -0x1

    if-eqz v5, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getMetricsCategory()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b00e7

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    invoke-static {v13, v14}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-virtual {v3, v4}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v13

    cmp-long v11, v13, v11

    if-eqz v11, :cond_5

    cmp-long v11, v13, v9

    if-lez v11, :cond_5

    invoke-virtual {v3, v4, v9, v10}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    :cond_5
    const-string v11, "BillingCycleSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setPolicyLimitBytes() limitBytes"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v4, v9, v10}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_1

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getMetricsCategory()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b00e8

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    invoke-static {v13, v14}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-virtual {v3, v4}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v13

    cmp-long v11, v13, v11

    if-eqz v11, :cond_7

    cmp-long v11, v13, v9

    if-gez v11, :cond_7

    move-wide v9, v13

    :cond_7
    const-string v11, "BillingCycleSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setPolicyWarningBytes() WarningBytes"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v4, v9, v10}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    :goto_1
    invoke-interface {v1}, Lcom/android/settings/datausage/DataUsageEditController;->updateDataUsage()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "limit"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const v4, 0x7f0d005d

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    const v5, 0x7f0a0773

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const v6, 0x7f0601d1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v5, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    const v6, 0x7f0a014e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-direct {p0, v5, v4}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->setupPicker(Landroid/widget/EditText;Landroid/widget/Spinner;)V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_0

    const v7, 0x7f120618

    goto :goto_0

    :cond_0
    const v7, 0x7f12064f

    :goto_0
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v7, 0x7f1205f5

    invoke-virtual {v5, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v7, 0x1040000

    invoke-virtual {v5, v7, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v3
.end method
