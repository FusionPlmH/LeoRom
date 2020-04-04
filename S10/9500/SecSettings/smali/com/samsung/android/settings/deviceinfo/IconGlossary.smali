.class public Lcom/samsung/android/settings/deviceinfo/IconGlossary;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "IconGlossary.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 69

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/IconGlossary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d01b6

    const/4 v2, 0x0

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a03b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0a03ba

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    const/4 v6, 0x0

    :goto_0
    array-length v7, v5

    if-ge v6, v7, :cond_1

    aget v7, v5, v6

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    const/16 v8, 0xf

    invoke-virtual {v7, v8}, Landroid/view/View;->semSetRoundedCorners(I)V

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/IconGlossary;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0601b1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const v6, 0x7f0a0152

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const v6, 0x7f0a014f

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const v6, 0x7f0a0520

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const v7, 0x7f0a0519

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const v8, 0x7f0a0529

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const v9, 0x7f0a01b4

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    const v10, 0x7f0a059c

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const v11, 0x7f0a05a4

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const v11, 0x7f0a0507

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    const v12, 0x7f0a0500

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    const v13, 0x7f0a0512

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    const v14, 0x7f0a0503

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    const v15, 0x7f0a050a

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    const v3, 0x7f0a0523

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v16, v5

    const v5, 0x7f0a01b5

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    move-object/from16 v17, v5

    const v5, 0x7f0a01b7

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const v5, 0x7f0a01b8

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    move-object/from16 v18, v5

    const v5, 0x7f0a01b9

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    move-object/from16 v19, v5

    const v5, 0x7f0a01b3

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    move-object/from16 v20, v5

    const v5, 0x7f0a0062

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const v5, 0x7f0a0599

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const v5, 0x7f0a0595

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const v5, 0x7f0a0596

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const v5, 0x7f0a05a2

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    move-object/from16 v21, v5

    const v5, 0x7f0a05a0

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    move-object/from16 v22, v5

    const v5, 0x7f0a0598

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    move-object/from16 v23, v5

    const v5, 0x7f0a05a6

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    move-object/from16 v24, v5

    const v5, 0x7f0a0522

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v25, v4

    const v4, 0x7f0a04c5

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v26, v6

    const v6, 0x7f0a04c9

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object/from16 v27, v0

    const v0, 0x7f0a04c7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object/from16 v28, v3

    const v3, 0x7f0a05a5

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const v3, 0x7f0a050d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v29, v3

    const v3, 0x7f0a0506

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v30, v3

    const v3, 0x7f0a0526

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v31, v3

    const v3, 0x7f0a051b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v32, v3

    const v3, 0x7f0a0521

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v33, v3

    const v3, 0x7f0a051e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v34, v3

    const v3, 0x7f0a0513

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v35, v3

    const v3, 0x7f0a0517

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v36, v3

    const v3, 0x7f0a052d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v37, v3

    const v3, 0x7f0a0531

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v38, v3

    const v3, 0x7f0a01b6

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v39, v3

    const v3, 0x7f0a0597

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v40, v3

    const v3, 0x7f0a0150

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v41, v1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/IconGlossary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    move-object/from16 v42, v3

    const/16 v3, 0x8

    if-nez v1, :cond_2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const-string v1, "VZW"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    if-eqz v13, :cond_3

    const/16 v1, 0x8

    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    :goto_1
    if-eqz v7, :cond_4

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    if-eqz v9, :cond_6

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_6
    if-eqz v10, :cond_7

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_7
    if-eqz v14, :cond_8

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_8
    if-eqz v15, :cond_9

    invoke-virtual {v15, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    if-eqz v11, :cond_a

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_a
    if-eqz v12, :cond_b

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_b
    if-eqz v5, :cond_c

    const v1, 0x7f1214b0

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_c
    if-eqz v4, :cond_d

    const v1, 0x7f12149a

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_d
    if-eqz v6, :cond_e

    const v1, 0x7f12149e

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_e
    if-eqz v0, :cond_f

    const v1, 0x7f12149c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_f
    if-eqz v30, :cond_10

    const v1, 0x7f080466

    move-object/from16 v3, v30

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_10
    move-object/from16 v3, v30

    :goto_2
    if-eqz v29, :cond_11

    const v1, 0x7f08046a

    move-object/from16 v43, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_11
    move-object/from16 v43, v0

    move-object/from16 v0, v29

    :goto_3
    if-eqz v31, :cond_12

    const v1, 0x7f08047c

    move-object/from16 v44, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :cond_12
    move-object/from16 v44, v0

    move-object/from16 v0, v31

    :goto_4
    if-eqz v32, :cond_13

    const v1, 0x7f080476

    move-object/from16 v45, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_13
    move-object/from16 v45, v0

    move-object/from16 v0, v32

    :goto_5
    if-eqz v33, :cond_14

    const v1, 0x7f08047a

    move-object/from16 v46, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    :cond_14
    move-object/from16 v46, v0

    move-object/from16 v0, v33

    :goto_6
    if-eqz v34, :cond_15

    const v1, 0x7f080478

    move-object/from16 v47, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    :cond_15
    move-object/from16 v47, v0

    move-object/from16 v0, v34

    :goto_7
    if-eqz v35, :cond_16

    const v1, 0x7f08046e

    move-object/from16 v48, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    :cond_16
    move-object/from16 v48, v0

    move-object/from16 v0, v35

    :goto_8
    if-eqz v36, :cond_17

    const v1, 0x7f080472

    move-object/from16 v49, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    :cond_17
    move-object/from16 v49, v0

    move-object/from16 v0, v36

    :goto_9
    if-eqz v39, :cond_18

    const v1, 0x7f080452

    move-object/from16 v50, v0

    move-object/from16 v0, v39

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a

    :cond_18
    move-object/from16 v50, v0

    move-object/from16 v0, v39

    :goto_a
    if-eqz v37, :cond_19

    const v1, 0x7f080482

    move-object/from16 v51, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    :cond_19
    move-object/from16 v51, v0

    move-object/from16 v0, v37

    :goto_b
    if-eqz v38, :cond_1a

    const v1, 0x7f080485

    move-object/from16 v52, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    :cond_1a
    move-object/from16 v52, v0

    move-object/from16 v0, v38

    :goto_c
    if-eqz v40, :cond_1b

    const v1, 0x7f080486

    move-object/from16 v53, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d

    :cond_1b
    move-object/from16 v53, v0

    move-object/from16 v0, v40

    :goto_d
    if-eqz v42, :cond_1c

    const v1, 0x7f080446

    move-object/from16 v54, v0

    move-object/from16 v0, v42

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v55, v0

    move-object/from16 v1, v28

    const/16 v0, 0x8

    goto :goto_e

    :cond_1c
    move-object/from16 v54, v0

    move-object/from16 v1, v28

    move-object/from16 v55, v42

    const/16 v0, 0x8

    goto :goto_e

    :cond_1d
    move-object/from16 v43, v0

    move-object/from16 v44, v29

    move-object/from16 v3, v30

    move-object/from16 v45, v31

    move-object/from16 v46, v32

    move-object/from16 v47, v33

    move-object/from16 v48, v34

    move-object/from16 v49, v35

    move-object/from16 v50, v36

    move-object/from16 v52, v37

    move-object/from16 v53, v38

    move-object/from16 v51, v39

    move-object/from16 v54, v40

    move-object/from16 v0, v42

    if-eqz v28, :cond_1e

    move-object/from16 v55, v0

    move-object/from16 v1, v28

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_e

    :cond_1e
    move-object/from16 v55, v0

    move-object/from16 v1, v28

    const/16 v0, 0x8

    :goto_e
    const-string v0, "com.samsung.android.personalpage.service"

    move-object/from16 v56, v1

    move-object/from16 v1, v27

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    if-eqz v10, :cond_1f

    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_f

    :cond_1f
    const/16 v0, 0x8

    :goto_f
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move-object/from16 v57, v2

    const v2, 0x7f050051

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_20

    move-object/from16 v0, v26

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_10

    :cond_20
    move-object/from16 v0, v26

    const/16 v2, 0x8

    :goto_10
    invoke-static {v1}, Lcom/android/settings/Utils;->isSmsCapable(Landroid/content/Context;)Z

    move-result v26

    if-nez v26, :cond_21

    move-object/from16 v58, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_11

    :cond_21
    move-object/from16 v58, v0

    move-object/from16 v0, v25

    :goto_11
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_22
    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportSmartBonding()Z

    move-result v2

    if-nez v2, :cond_24

    :cond_23
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_12

    :cond_24
    const/16 v2, 0x8

    :goto_12
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v59, v0

    const-string v0, "android.hardware.nfc"

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    move-object/from16 v0, v17

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_13

    :cond_25
    move-object/from16 v0, v17

    const/16 v2, 0x8

    :goto_13
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    move-object/from16 v60, v0

    const-string v0, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v2, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    move-object/from16 v0, v22

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_14

    :cond_26
    move-object/from16 v0, v22

    const/16 v2, 0x8

    :goto_14
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    move-object/from16 v61, v0

    const-string v0, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_FLASH_NOTIFICATION"

    invoke-virtual {v2, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    move-object/from16 v0, v23

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_15

    :cond_27
    move-object/from16 v0, v23

    const/16 v2, 0x8

    :goto_15
    const-string v2, "com.samsung.android.app.advsounddetector"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    move-object/from16 v62, v0

    move-object/from16 v2, v21

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_16

    :cond_28
    move-object/from16 v62, v0

    move-object/from16 v2, v21

    :goto_16
    const-string v0, "1"

    move-object/from16 v63, v2

    const-string/jumbo v2, "storage.support.sdcard"

    move-object/from16 v64, v3

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    move-object/from16 v2, v18

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move/from16 v65, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_17

    :cond_29
    move/from16 v65, v0

    move-object/from16 v2, v18

    move-object/from16 v0, v19

    const/16 v3, 0x8

    :goto_17
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v66, v0

    const/16 v0, 0x17

    if-lt v3, v0, :cond_2a

    move-object/from16 v0, v20

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_18

    :cond_2a
    move-object/from16 v0, v20

    :goto_18
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-nez v3, :cond_2c

    const-string v3, "com.sec.android.app.voicenote"

    invoke-static {v1, v3}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto :goto_19

    :cond_2b
    move-object/from16 v67, v0

    move-object/from16 v3, v24

    goto :goto_1a

    :cond_2c
    :goto_19
    move-object/from16 v67, v0

    move-object/from16 v3, v24

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1a
    move-object/from16 v0, v41

    check-cast v0, Landroid/widget/ScrollView;

    move-object/from16 v68, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->semSetGoToTopEnabled(Z)V

    return-object v41

    nop

    nop

    :array_0
    .array-data 4
        0x7f0a03b1
        0x7f0a03b5
        0x7f0a03c1
        0x7f0a03bd
        0x7f0a03b7
        0x7f0a03b9
        0x7f0a03bb
        0x7f0a03b0
        0x7f0a03b3
        0x7f0a03bf
    .end array-data
.end method
