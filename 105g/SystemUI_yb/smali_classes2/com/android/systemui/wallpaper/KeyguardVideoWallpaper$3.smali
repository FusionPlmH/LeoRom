.class Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardVideoWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceRecognitionError(ILjava/lang/CharSequence;)V
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const-string v0, "KeyguardVideoWallpaper"

    const-string v1, "onFaceRecognitionError pause video"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->access$500(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;Z)V

    :cond_0
    return-void
.end method

.method public onKeyguardConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->access$600(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050369

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mStatusBarHeight:I

    return-void
.end method
