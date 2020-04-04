.class public abstract Lcom/android/settings/notification/EmptyTextSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "EmptyTextSettings.java"


# instance fields
.field private mEmpty:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/notification/EmptyTextSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/notification/EmptyTextSettings;->mEmpty:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/notification/EmptyTextSettings;->mEmpty:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/notification/EmptyTextSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x1010041

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v1, p0, Lcom/android/settings/notification/EmptyTextSettings;->mEmpty:Landroid/widget/TextView;

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    const v1, 0x102003f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings/notification/EmptyTextSettings;->mEmpty:Landroid/widget/TextView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/EmptyTextSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/notification/EmptyTextSettings;->mEmpty:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v3, v6, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v2, p0, Lcom/android/settings/notification/EmptyTextSettings;->mEmpty:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/EmptyTextSettings;->setEmptyView(Landroid/view/View;)V

    return-void

    :array_0
    .array-data 4
        0x10103a3
        0x10103a4
    .end array-data
.end method

.method protected setEmptyText(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/EmptyTextSettings;->mEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
