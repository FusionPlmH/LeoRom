.class public Lcom/android/internal/app/SuggestedLocaleAdapter;
.super Landroid/widget/BaseAdapter;
.source "SuggestedLocaleAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;
    }
.end annotation


# static fields
.field private static final MIN_REGIONS_FOR_SUGGESTIONS:I = 0x6

.field private static final TYPE_HEADER_ALL_OTHERS:I = 0x1

.field private static final TYPE_HEADER_SUGGESTED:I = 0x0

.field private static final TYPE_HEADER_SUGGESTED_SEC:I = 0x3

.field private static final TYPE_LOCALE:I = 0x2


# instance fields
.field private mContextOverride:Landroid/content/Context;

.field private final mCountryMode:Z

.field private mDisplayLocale:Ljava/util/Locale;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsShowAll:Z

.field private mIsStrokeRoundedCorner:Z

.field private mLocaleOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLocaleOptionsforSecSuggested:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLocaleOptionsforShowAll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalLocaleOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSecSuggestionCount:I

.field private mSubheaderColor:I

.field private mSuggestionCount:I


# direct methods
.method public constructor <init>(Ljava/util/Set;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsShowAll:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsStrokeRoundedCorner:Z

    const-string v1, "#F2F2F2"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSubheaderColor:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforSecSuggested:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforShowAll:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    goto :goto_1

    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSecSuggested()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    :cond_1
    :goto_1
    iget-boolean v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSecSuggested()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforSecSuggested:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforShowAll:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforSecSuggested:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mOriginalLocaleOptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/app/SuggestedLocaleAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mOriginalLocaleOptions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/app/SuggestedLocaleAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/internal/app/SuggestedLocaleAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    return p1
.end method

.method static synthetic access$208(Lcom/android/internal/app/SuggestedLocaleAdapter;)I
    .locals 2

    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/app/SuggestedLocaleAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    return p1
.end method

.method static synthetic access$308(Lcom/android/internal/app/SuggestedLocaleAdapter;)I
    .locals 2

    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/SuggestedLocaleAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/SuggestedLocaleAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsShowAll:Z

    return v0
.end method

.method private setTextTo(Landroid/widget/TextView;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private showHeaders()Z
    .locals 1

    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showSecHeaders()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showSecHeaders()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showSecHeaders()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_3

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    new-instance v0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;

    invoke-direct {v0, p0}, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;-><init>(Lcom/android/internal/app/SuggestedLocaleAdapter;)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, -0x1

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-le p1, v1, :cond_1

    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    iget v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-gt p1, v1, :cond_1

    const/4 v0, -0x2

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    iget v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    add-int/2addr v1, v2

    if-le p1, v1, :cond_2

    const/4 v0, -0x3

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-le p1, v1, :cond_4

    const/4 v1, -0x2

    goto :goto_0

    :cond_4
    const/4 v1, -0x1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_5
    const/4 v0, -0x1

    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    add-int v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4

    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showSecHeaders()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    const/4 v3, 0x3

    if-eqz v0, :cond_6

    if-nez p1, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    add-int/2addr v0, v2

    if-ne p1, v0, :cond_3

    return v3

    :cond_3
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    add-int/2addr v0, v2

    iget v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    if-ne p1, v0, :cond_5

    return v2

    :cond_4
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    add-int/2addr v0, v2

    if-ne p1, v0, :cond_5

    return v2

    :cond_5
    return v1

    :cond_6
    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showSecHeaders()Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p1, :cond_7

    return v3

    :cond_7
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    add-int/2addr v0, v2

    if-ne p1, v0, :cond_8

    return v2

    :cond_8
    return v1
.end method

.method public getSecSuggestionCount()I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    return v0
.end method

.method public getShowAll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsShowAll:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_8

    packed-switch v0, :pswitch_data_0

    instance-of v3, p2, Landroid/view/ViewGroup;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    new-instance v3, Landroid/internal/app/LocalePickerItemView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-boolean v7, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsStrokeRoundedCorner:Z

    invoke-direct {v3, v5, v4, v6, v7}, Landroid/internal/app/LocalePickerItemView;-><init>(Landroid/content/Context;ILandroid/view/LayoutInflater;Z)V

    move-object p2, v3

    :cond_1
    const v3, 0x1020387

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x102029f

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    iget-boolean v6, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    invoke-virtual {v1, v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLabel(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    iget-boolean v6, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    invoke-virtual {v1, v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getContentDescription(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/View;->setLayoutDirection(I)V

    if-ne v6, v4, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    :cond_2
    nop

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextDirection(I)V

    const/4 v2, 0x0

    const/4 v7, 0x0

    if-eq p1, v4, :cond_3

    iget v8, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-lez v8, :cond_4

    iget v8, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    add-int/lit8 v8, v8, 0x2

    if-ne p1, v8, :cond_4

    :cond_3
    const/4 v7, 0x3

    const/4 v2, 0x1

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getCount()I

    move-result v8

    sub-int/2addr v8, v4

    if-eq p1, v8, :cond_5

    iget v4, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-lez v4, :cond_7

    iget v4, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-ne p1, v4, :cond_7

    :cond_5
    if-eqz v2, :cond_6

    const/16 v4, 0xf

    goto :goto_1

    :cond_6
    const/16 v4, 0xc

    :goto_1
    move v7, v4

    const/16 v4, 0x8

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    move-object v4, p2

    check-cast v4, Landroid/internal/app/LocalePickerItemView;

    invoke-virtual {v4, v7}, Landroid/internal/app/LocalePickerItemView;->setRoundedCorners(I)V

    invoke-virtual {p2, v7}, Landroid/view/View;->semSetRoundedCorners(I)V

    if-eqz v7, :cond_f

    iget v4, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSubheaderColor:I

    invoke-virtual {p2, v7, v4}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    goto :goto_4

    :cond_8
    :pswitch_0
    instance-of v3, p2, Landroid/widget/TextView;

    if-nez v3, :cond_9

    new-instance v3, Landroid/internal/app/LocalePickerItemView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-boolean v6, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsStrokeRoundedCorner:Z

    invoke-direct {v3, v4, v1, v5, v6}, Landroid/internal/app/LocalePickerItemView;-><init>(Landroid/content/Context;ILandroid/view/LayoutInflater;Z)V

    move-object p2, v3

    :cond_9
    const v3, 0x10204a8

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-nez v0, :cond_a

    const v1, 0x10404a3

    invoke-direct {p0, v3, v1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    goto :goto_2

    :cond_a
    if-ne v0, v2, :cond_c

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v4, "CscFeature_Common_ReplaceSecBrandAsGalaxy"

    invoke-virtual {v2, v4, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    const v1, 0x10404a5

    invoke-direct {p0, v3, v1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    goto :goto_2

    :cond_b
    const v1, 0x10404a4

    invoke-direct {p0, v3, v1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    goto :goto_2

    :cond_c
    iget-boolean v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-eqz v1, :cond_d

    const v1, 0x10408a7

    invoke-direct {p0, v3, v1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    goto :goto_2

    :cond_d
    const v1, 0x10404a1

    invoke-direct {p0, v3, v1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    :goto_2
    nop

    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    goto :goto_3

    :cond_e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    nop

    :cond_f
    :goto_4
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDisplayLocale(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 2

    if-nez p2, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    :cond_1
    :goto_0
    return-void
.end method

.method public setSecSuggestionCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    return-void
.end method

.method public setShowAll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsShowAll:Z

    return-void
.end method

.method public setStrokeRoundedCorner(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsStrokeRoundedCorner:Z

    return-void
.end method

.method public setSubheaderColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSubheaderColor:I

    return-void
.end method

.method public showAllItems()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforShowAll:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsShowAll:Z

    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public showSamsungSuggestedItems()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforSecSuggested:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsShowAll:Z

    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public sort(Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforShowAll:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public sortForSecSuggested(Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforSecSuggested:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
