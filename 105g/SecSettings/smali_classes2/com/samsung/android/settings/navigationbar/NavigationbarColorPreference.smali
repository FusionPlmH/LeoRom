.class public Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;
.super Landroid/support/v7/preference/Preference;
.source "NavigationbarColorPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;
    }
.end annotation


# static fields
.field private static sSelectedColorIndex:I


# instance fields
.field private color_value:[I

.field private mAdapter:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

.field public mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

.field private mContext:Landroid/content/Context;

.field private mGrid:Landroid/widget/GridView;

.field mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

.field public mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;

.field private mPreviewBg:Landroid/widget/ImageView;

.field private mPreviewIcon:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->sSelectedColorIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f0d01f4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->setLayoutResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->color_value:[I

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->getSelectedPosition()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->sSelectedColorIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->setNavigationBarPreview(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->resetNavigationBarIconColor()V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->sSelectedColorIndex:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->sSelectedColorIndex:I

    return p0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->updatePreview()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->notifyChanged()V

    return-void
.end method

.method private getNavigationBarIconColor(I)I
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [F

    invoke-static {v1, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v4, 0x1

    aget v5, v3, v4

    float-to-double v5, v5

    const-wide v7, 0x3fc999999999999aL    # 0.2

    cmpg-double v5, v5, v7

    const-wide v9, 0x3fee666666666666L    # 0.95

    const/4 v6, 0x2

    if-gtz v5, :cond_0

    aget v5, v3, v6

    float-to-double v11, v5

    cmpl-double v5, v11, v9

    if-ltz v5, :cond_0

    iget-object v4, v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v5, 0x7f0600ed

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v2

    goto/16 :goto_1

    :cond_0
    aget v5, v3, v6

    float-to-double v11, v5

    const-wide v13, 0x3fa999999999999aL    # 0.05

    cmpg-double v5, v11, v13

    if-gtz v5, :cond_1

    iget-object v4, v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v5, 0x7f0600eb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v2

    goto/16 :goto_1

    :cond_1
    const/4 v5, 0x0

    aget v11, v3, v5

    const/high16 v12, 0x41f00000    # 30.0f

    cmpg-float v11, v11, v12

    const-wide v15, 0x3fdccccccccccccdL    # 0.45

    const v13, 0x7f0600ec

    const v14, 0x7f0600ea

    const-wide v19, 0x3fe6666666666666L    # 0.7

    const-wide v21, 0x3feb333333333333L    # 0.85

    if-lez v11, :cond_e

    aget v11, v3, v5

    const/high16 v23, 0x433e0000    # 190.0f

    cmpl-float v11, v11, v23

    if-ltz v11, :cond_2

    aget v11, v3, v5

    const/high16 v24, 0x43b40000    # 360.0f

    cmpg-float v11, v11, v24

    if-gtz v11, :cond_2

    goto/16 :goto_0

    :cond_2
    aget v11, v3, v5

    const/high16 v17, 0x42480000    # 50.0f

    cmpl-float v11, v11, v17

    const/high16 v18, 0x43110000    # 145.0f

    if-ltz v11, :cond_7

    aget v11, v3, v5

    cmpg-float v11, v11, v18

    if-gtz v11, :cond_7

    aget v5, v3, v4

    float-to-double v11, v5

    cmpl-double v5, v11, v7

    if-ltz v5, :cond_3

    aget v5, v3, v6

    float-to-double v11, v5

    cmpl-double v5, v11, v9

    if-gez v5, :cond_5

    :cond_3
    aget v5, v3, v6

    float-to-double v11, v5

    cmpl-double v5, v11, v21

    if-ltz v5, :cond_4

    aget v5, v3, v6

    float-to-double v11, v5

    cmpg-double v5, v11, v9

    if-lez v5, :cond_5

    :cond_4
    aget v4, v3, v4

    float-to-double v4, v4

    cmpg-double v4, v4, v7

    if-gtz v4, :cond_6

    aget v4, v3, v6

    float-to-double v4, v4

    cmpl-double v4, v4, v19

    if-ltz v4, :cond_6

    aget v4, v3, v6

    float-to-double v4, v4

    cmpg-double v4, v4, v21

    if-gtz v4, :cond_6

    :cond_5
    iget-object v4, v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v14}, Landroid/content/Context;->getColor(I)I

    move-result v2

    goto/16 :goto_1

    :cond_6
    iget-object v4, v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v13}, Landroid/content/Context;->getColor(I)I

    move-result v2

    goto/16 :goto_1

    :cond_7
    aget v11, v3, v5

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_8

    aget v11, v3, v5

    cmpg-float v11, v11, v17

    if-lez v11, :cond_9

    :cond_8
    aget v11, v3, v5

    cmpl-float v11, v11, v18

    if-ltz v11, :cond_13

    aget v5, v3, v5

    cmpg-float v5, v5, v23

    if-gtz v5, :cond_13

    :cond_9
    aget v5, v3, v4

    float-to-double v11, v5

    cmpl-double v5, v11, v7

    if-ltz v5, :cond_a

    aget v5, v3, v6

    float-to-double v7, v5

    cmpl-double v5, v7, v9

    if-gez v5, :cond_c

    :cond_a
    aget v5, v3, v4

    float-to-double v7, v5

    cmpg-double v5, v7, v15

    if-gtz v5, :cond_b

    aget v5, v3, v6

    float-to-double v7, v5

    cmpl-double v5, v7, v21

    if-ltz v5, :cond_b

    aget v5, v3, v6

    float-to-double v7, v5

    cmpg-double v5, v7, v9

    if-lez v5, :cond_c

    :cond_b
    aget v4, v3, v4

    float-to-double v4, v4

    const-wide v7, 0x3fc3333333333333L    # 0.15

    cmpg-double v4, v4, v7

    if-gtz v4, :cond_d

    aget v4, v3, v6

    float-to-double v4, v4

    cmpl-double v4, v4, v19

    if-ltz v4, :cond_d

    aget v4, v3, v6

    float-to-double v4, v4

    cmpg-double v4, v4, v21

    if-gtz v4, :cond_d

    :cond_c
    iget-object v4, v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v14}, Landroid/content/Context;->getColor(I)I

    move-result v2

    goto :goto_1

    :cond_d
    iget-object v4, v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v13}, Landroid/content/Context;->getColor(I)I

    move-result v2

    goto :goto_1

    :cond_e
    :goto_0
    aget v5, v3, v4

    float-to-double v11, v5

    cmpl-double v5, v11, v7

    if-ltz v5, :cond_f

    aget v5, v3, v4

    float-to-double v7, v5

    cmpg-double v5, v7, v15

    if-gtz v5, :cond_f

    aget v5, v3, v6

    float-to-double v7, v5

    cmpl-double v5, v7, v9

    if-gez v5, :cond_11

    :cond_f
    aget v5, v3, v4

    float-to-double v7, v5

    cmpg-double v5, v7, v15

    if-gtz v5, :cond_10

    aget v5, v3, v6

    float-to-double v7, v5

    cmpl-double v5, v7, v21

    if-ltz v5, :cond_10

    aget v5, v3, v6

    float-to-double v7, v5

    cmpg-double v5, v7, v9

    if-lez v5, :cond_11

    :cond_10
    aget v4, v3, v4

    float-to-double v4, v4

    const-wide v7, 0x3fa999999999999aL    # 0.05

    cmpg-double v4, v4, v7

    if-gtz v4, :cond_12

    aget v4, v3, v6

    float-to-double v4, v4

    cmpl-double v4, v4, v19

    if-ltz v4, :cond_12

    aget v4, v3, v6

    float-to-double v4, v4

    cmpg-double v4, v4, v21

    if-gtz v4, :cond_12

    :cond_11
    iget-object v4, v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v14}, Landroid/content/Context;->getColor(I)I

    move-result v2

    goto :goto_1

    :cond_12
    iget-object v4, v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v13}, Landroid/content/Context;->getColor(I)I

    move-result v2

    :cond_13
    :goto_1
    const-string v4, "NavigationbarColorPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get Icon color : bg ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "), icon ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private getSelectedPosition()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->color_value:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "navigationbar_color"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    nop

    :goto_0
    move v2, v3

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->color_value:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->color_value:[I

    aget v3, v3, v2

    if-ne v3, v1, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v3, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private resetNavigationBarIconColor()V
    .locals 1

    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    nop

    return-void
.end method

.method private setNavigationBarPreview(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->getNavigationBarIconColor(I)I

    move-result v0

    const-string v1, "statusbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    nop

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    return-void
.end method

.method private updatePreview()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mPreviewBg:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mPreviewIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigationbar_color"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->getNavigationBarIconColor(I)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v4, 0x7f0803cf

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mPreviewBg:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "navigationbar_key_order"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v5, 0x7f0803d0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v5, 0x7f0803d1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_0
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v1, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mPreviewIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getRecentlyUsedColor()[I
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigationbar_recently_used_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [I

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSemColorPickerDialog()Lcom/samsung/android/app/SemColorPickerDialog;
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->getRecentlyUsedColor()[I

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "navigationbar_color"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v1, :cond_0

    new-instance v3, Lcom/samsung/android/app/SemColorPickerDialog;

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;

    invoke-direct {v3, v4, v5, v2, v1}, Lcom/samsung/android/app/SemColorPickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;I[I)V

    move-object v0, v3

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/samsung/android/app/SemColorPickerDialog;

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/app/SemColorPickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;)V

    move-object v0, v3

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/app/SemColorPickerDialog;->getColorPicker()Lcom/samsung/android/widget/SemColorPicker;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    invoke-virtual {v3, v4}, Lcom/samsung/android/widget/SemColorPicker;->setOnColorChangedListener(Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;)V

    new-instance v3, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$3;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/SemColorPickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->color_value:[I

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;Landroid/content/Context;[I)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mAdapter:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

    const v0, 0x7f0a0356

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mGrid:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mAdapter:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0a05ed

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mPreviewBg:Landroid/widget/ImageView;

    const v0, 0x7f0a05f0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mPreviewIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->updateUI()V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/SemColorPickerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/SemColorPickerDialog;->dismiss()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->getSemColorPickerDialog()Lcom/samsung/android/app/SemColorPickerDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/SemColorPickerDialog;->show()V

    :cond_0
    return-void
.end method

.method public setRecentlyUsedColor(I)V
    .locals 6

    const-string v0, ""

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "navigationbar_recently_used_color"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x6

    if-ge v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "navigationbar_recently_used_color"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "navigationbar_recently_used_color"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_3
    return-void
.end method

.method public updateUI()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->updatePreview()V

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->getSelectedPosition()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->sSelectedColorIndex:I

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mAdapter:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mGrid:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mAdapter:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

    invoke-virtual {v0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mAdapter:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method
