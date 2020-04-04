.class Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;
.super Ljava/lang/Object;
.source "NavigationBarPressureGaugePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ButtonViewHolder"
.end annotation


# instance fields
.field private mBackgroundCircle:[Landroid/widget/ImageView;

.field private mButtonImage:[Landroid/widget/ImageView;

.field private mPressure_Gauge:[Landroid/widget/ImageView;

.field private mRippleView:[Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;->mBackgroundCircle:[Landroid/widget/ImageView;

    new-array v1, v0, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;->mPressure_Gauge:[Landroid/widget/ImageView;

    new-array v1, v0, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;->mButtonImage:[Landroid/widget/ImageView;

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;->mRippleView:[Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;->mRippleView:[Landroid/widget/ImageView;

    const v1, 0x7f0a03ac

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;->mBackgroundCircle:[Landroid/widget/ImageView;

    const v1, 0x7f0a03a5

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;->mButtonImage:[Landroid/widget/ImageView;

    const v1, 0x7f0a03a6

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;->mPressure_Gauge:[Landroid/widget/ImageView;

    const v1, 0x7f0a03aa

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v2

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;)[Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;->mRippleView:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;)[Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;->mBackgroundCircle:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;)[Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;->mPressure_Gauge:[Landroid/widget/ImageView;

    return-object v0
.end method
