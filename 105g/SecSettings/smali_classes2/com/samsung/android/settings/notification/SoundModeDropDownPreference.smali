.class public Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;
.super Landroid/support/v7/preference/SecListPreference;
.source "SoundModeDropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$ReselectionSpinner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


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

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mSpinner:Landroid/widget/Spinner;

.field private mUserClicked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const v0, 0x1010091

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0, p4}, Landroid/support/v7/preference/SecListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mUserClicked:Z

    new-instance v0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$2;-><init>(Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->createAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->createSpinner(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$1;-><init>(Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->updateEntries()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;)Landroid/widget/ArrayAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mUserClicked:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mUserClicked:Z

    return p1
.end method

.method private getMuteDurationTime()Ljava/lang/String;
    .locals 12

    const-string v0, "%s"

    const-string v1, "%s %s"

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMuteInterval()I

    move-result v2

    div-int/lit8 v3, v2, 0x3c

    rem-int/lit8 v4, v2, 0x3c

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100022

    invoke-virtual {v5, v6, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100023

    invoke-virtual {v7, v8, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    if-nez v3, :cond_0

    if-gtz v4, :cond_1

    :cond_0
    if-lez v3, :cond_3

    if-nez v4, :cond_3

    :cond_1
    if-nez v3, :cond_2

    const-string v10, "%s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v7, v6, v9

    invoke-static {v10, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_2
    if-nez v4, :cond_4

    const-string v10, "%s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v9

    invoke-static {v10, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_3
    if-lez v3, :cond_4

    if-lez v4, :cond_4

    const-string v10, "%s %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v5, v11, v9

    aput-object v7, v11, v6

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :cond_4
    :goto_0
    return-object v8
.end method

.method private updateEntries()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected createAdapter()Landroid/widget/ArrayAdapter;
    .locals 3

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0d026a

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected createSpinner(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/Spinner;
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$ReselectionSpinner;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$ReselectionSpinner;-><init>(Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected notifyChanged()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/preference/SecListPreference;->notifyChanged()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecListPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101030e

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_2

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/16 v3, 0x30

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07019c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method protected onClick()V
    .locals 0

    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->updateEntries()V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->getMuteDurationTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setValueIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method
