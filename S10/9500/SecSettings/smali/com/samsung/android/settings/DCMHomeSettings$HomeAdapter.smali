.class Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DCMHomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/DCMHomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/DCMHomeSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/DCMHomeSettings;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    move/from16 v2, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/pm/ResolveInfo;

    if-nez v3, :cond_0

    const-string v0, "DCMHomeSettings"

    const-string v4, "getView) info is null."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_0
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.nttdocomo.android.dhome"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    const v7, 0x7f0a03a0

    const v8, 0x7f0a03a3

    const v9, 0x7f0a03a2

    const/4 v10, 0x0

    if-nez v5, :cond_2

    const-string v5, "com.nttdocomo.android.paletteui"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "com.sec.android.app.launcher"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "com.sec.android.app.easylauncher"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v11, 0x7f1500cb

    invoke-virtual {v5, v11, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/DCMHomeSettings;->access$600(Lcom/samsung/android/settings/DCMHomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/DCMHomeSettings;->access$600(Lcom/samsung/android/settings/DCMHomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/DCMHomeSettings;->access$500(Lcom/samsung/android/settings/DCMHomeSettings;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    iget-object v9, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/DCMHomeSettings;->access$500(Lcom/samsung/android/settings/DCMHomeSettings;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v7, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_9

    :cond_2
    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v11, 0x7f1500ca

    invoke-virtual {v5, v11, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const v0, 0x7f0a03a7

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/RadioButton;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v0, "com.sec.android.app.SecSetupWizard"

    move-object v13, v0

    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/DCMHomeSettings;->access$300(Lcom/samsung/android/settings/DCMHomeSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    move-object v12, v0

    iget-object v0, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/DCMHomeSettings;->access$300(Lcom/samsung/android/settings/DCMHomeSettings;)Landroid/content/Context;

    move-result-object v0

    const/4 v14, 0x2

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v14, "DCMHomeSettings"

    const-string v15, "error getting resource"

    invoke-static {v14, v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v14, "DCMHomeSettings"

    const-string v15, "error getting activity of create package context"

    invoke-static {v14, v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    nop

    :goto_2
    const-string v0, "com.nttdocomo.android.dhome"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "com.nttdocomo.android.paletteui"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_6

    :cond_4
    const-string v0, "com.sec.android.app.launcher"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_1
    const-string v0, "ntt_setupwizard_list_basic_home"

    const-string v14, "drawable"

    invoke-virtual {v12, v0, v14, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v14, "DCMHomeSettings"

    const-string v15, "error getting resource"

    invoke-static {v14, v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    const-string v0, ""

    iget-object v14, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/DCMHomeSettings;->access$400(Lcom/samsung/android/settings/DCMHomeSettings;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "DCMHomeSettings"

    const-string v14, "Load Samsung Home Label from PM"

    invoke-static {v0, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/DCMHomeSettings;->access$400(Lcom/samsung/android/settings/DCMHomeSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_5
    const v0, 0x7f121472

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_4
    const v0, 0x7f121473

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_8

    :cond_6
    const-string v0, "com.sec.android.app.easylauncher"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :try_start_2
    const-string v0, "ntt_setupwizard_list_easy_mode"

    const-string v14, "drawable"

    invoke-virtual {v12, v0, v14, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    const-string v14, "DCMHomeSettings"

    const-string v15, "error getting resource"

    invoke-static {v14, v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    const v0, 0x7f121477

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f121478

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_8

    :cond_7
    :goto_6
    :try_start_3
    const-string v0, "ntt_setupwizard_list_customer_home"

    const-string v14, "drawable"

    invoke-virtual {v12, v0, v14, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    const-string v14, "DCMHomeSettings"

    const-string v15, "error getting resource"

    invoke-static {v14, v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    const v0, 0x7f121474

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f121475

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_8
    :goto_8
    iget-object v0, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/DCMHomeSettings;->access$500(Lcom/samsung/android/settings/DCMHomeSettings;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/DCMHomeSettings;->access$500(Lcom/samsung/android/settings/DCMHomeSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v7, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_9
    nop

    move-object v0, v5

    :cond_a
    :goto_9
    return-object v0
.end method
