.class Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;
.super Ljava/lang/Object;
.source "SuggestionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CardConfig"
.end annotation


# static fields
.field private static sConfig:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;


# instance fields
.field private final mMarginInner:I

.field private final mMarginOuter:I

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    const v1, 0x7f0707d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;->mMarginInner:I

    nop

    const v1, 0x7f0707d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;->mMarginOuter:I

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;
    .locals 1

    sget-object v0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;->sConfig:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;->sConfig:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;

    :cond_0
    sget-object v0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;->sConfig:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;

    return-object v0
.end method


# virtual methods
.method getScreenWidth()I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v1
.end method

.method setCardLayout(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;I)V
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
