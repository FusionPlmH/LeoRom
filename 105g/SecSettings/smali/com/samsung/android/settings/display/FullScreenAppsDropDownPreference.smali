.class public Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;
.super Landroid/support/v7/preference/SecPreference;
.source "FullScreenAppsDropDownPreference.java"


# instance fields
.field private final mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppRow:Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;

.field private final mContext:Landroid/content/Context;

.field private mPreferenceClicked:Z

.field private final mSpinner:Landroid/widget/Spinner;

.field private final mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mValues:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mPreferenceClicked:Z

    iput-object p1, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0d026a

    invoke-direct {v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    new-instance v1, Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference$1;-><init>(Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->setPersistent(Z)V

    new-instance v1, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference$2;-><init>(Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    sget-object v1, Lcom/android/settings/R$styleable;->DropDownPreference:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    nop

    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    aget-object v5, v2, v0

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v4, v0

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mPreferenceClicked:Z

    return p1
.end method

.method private addItem(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private updateMaxAspect(I)V
    .locals 6

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const-string v3, "FullScreenAppsSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMaxAspectPackage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mAppRow:Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;

    iget-object v5, v5, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mAppRow:Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;

    iget-object v5, v5, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v4, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mAppRow:Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;

    iget-object v4, v4, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mAppRow:Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;

    iget v5, v5, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mUid:I

    invoke-interface {v3, v4, v5, v2, v0}, Landroid/view/IWindowManager;->setMaxAspectPackage(Ljava/lang/String;IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "FullScreenAppsSettings"

    const-string/jumbo v4, "setMaxAspectPackage() RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mAppRow:Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;

    iget v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mAppRow:Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;

    iget v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mAppRow:Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;

    iget v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    :cond_2
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f120a86

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    return-void
.end method


# virtual methods
.method public addItems([Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearItems()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getmSpinner()Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070585

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    return-void
.end method

.method public setAppRow(Landroid/view/IWindowManager;Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mWindowManager:Landroid/view/IWindowManager;

    iput-object p2, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mAppRow:Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;

    return-void
.end method

.method public setSelectedItem(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mPreferenceClicked:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->updateMaxAspect(I)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->mPreferenceClicked:Z

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->notifyDependencyChange(Z)V

    return-void
.end method
