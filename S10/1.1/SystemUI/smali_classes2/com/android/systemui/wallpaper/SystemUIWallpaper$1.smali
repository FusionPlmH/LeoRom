.class Lcom/android/systemui/wallpaper/SystemUIWallpaper$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SystemUIWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/SystemUIWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/SystemUIWallpaper;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/SystemUIWallpaper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/SystemUIWallpaper;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v2, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/SystemUIWallpaper;

    iget v2, v2, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDensity:I

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/SystemUIWallpaper;

    iget v2, v2, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mFontScale:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/SystemUIWallpaper;

    iput v1, v2, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDensity:I

    iget-object v2, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/SystemUIWallpaper;

    iput v0, v2, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mFontScale:F

    :cond_1
    return-void
.end method