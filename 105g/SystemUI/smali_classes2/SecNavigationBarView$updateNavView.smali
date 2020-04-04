.class Lcom/android/systemui/statusbar/phone/SecNavigationBarView$updateNavView;
.super Landroid/database/ContentObserver;
.source "SecNavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/SecNavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "updateNavView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$updateNavView;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public NavView()V
    .locals 37

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$updateNavView;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget-boolean v11, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrNavShowBG:Z

    if-eqz v11, :cond_3

    sget-boolean v28, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrNavStrokeEnabled:Z

    sget v29, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrNavStrokeThickness:I

    sget v30, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrNavStrokeDashWidth:I

    sget v31, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrNavStrokeDashGap:I

    sget v32, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrNavStrokeDashColor:I

    sget v33, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrNavGradientBackGroundCornerRadius:I

    sget v34, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrNavWallpaperColor:I

    sget v35, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrNavBgWallpaperAlpha:I

    sget-object v36, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrNavBgWallpaper:Ljava/lang/String;

    sget v10, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrNavBGStyle:I

    if-nez v10, :cond_0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$updateNavView;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    sget v9, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrNavBgBasicColor:I

    move/from16 v3, v28

    move/from16 v4, v29

    move/from16 v5, v30

    move/from16 v6, v31

    move/from16 v7, v32

    move/from16 v8, v33

    invoke-static/range {v3 .. v9}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getLeoBasicColor(ZIIIIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne v10, v3, :cond_1

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$updateNavView;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    sget v12, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrNavGradientBgStartColor:I

    sget v13, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrNavGradientBgCenterColor:I

    sget v14, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrNavGradientBgEndColor:I

    sget v15, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrNavGradientColorFour:I

    sget v16, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrNavGradientColorFive:I

    sget v17, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrNavGradientColorSix:I

    sget v18, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrNavGradientEnableCenterColor:I

    sget v19, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrNavBgGradientBgStyle:I

    sget v26, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrNavGradientBgType:I

    sget v27, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrNavGradientBackGroundColorRadius:I

    move/from16 v20, v28

    move/from16 v21, v29

    move/from16 v22, v30

    move/from16 v23, v31

    move/from16 v24, v32

    move/from16 v25, v33

    invoke-static/range {v12 .. v27}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->LeoGradientDrawable(IIIIIIIIZIIIIIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    const/16 v3, 0x3e7

    if-ne v10, v3, :cond_2

    if-eqz v36, :cond_2

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$updateNavView;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    sget v5, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrNavBlurBgDegree:I

    sget v6, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrNavWallpaperColorEnable:I

    sget-boolean v8, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrNavBgWallpaperAlphaEnable:Z

    sget-boolean v13, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrNavBgWallpaperBlurEnabled:Z

    move-object v3, v2

    move-object/from16 v4, v36

    move/from16 v7, v34

    move/from16 v9, v35

    move v14, v10

    move v10, v13

    invoke-static/range {v3 .. v10}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getLeoWallpaper(Landroid/content/Context;Ljava/lang/String;IIIZIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    move v14, v10

    :goto_1
    goto :goto_2

    :cond_3
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$updateNavView;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setBackgroundColor(I)V

    :goto_2
    return-void
.end method

.method public observer()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$updateNavView;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoManages;->CustomNavBg:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    invoke-static {v5}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getLeoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v6, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onChange(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$updateNavView;->NavView()V

    return-void
.end method
