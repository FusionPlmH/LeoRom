.class Lcom/samsung/android/sdk/sfe/font/FontManager$1;
.super Ljava/lang/Object;
.source "FontManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/sfe/font/FontManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/sfe/font/FontManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/sfe/font/FontManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/sfe/font/FontManager$1;->this$0:Lcom/samsung/android/sdk/sfe/font/FontManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/sfe/font/FontManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SFFontManager"

    const-string/jumbo v1, "setFontConfig start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/sfe/font/FontManager;->access$100()Landroid/text/FontConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/sfe/font/FontManager;->access$200(Landroid/text/FontConfig;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/sdk/sfe/font/FontManager;->access$302(Z)Z

    invoke-static {}, Lcom/samsung/android/sdk/sfe/font/FontManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SFFontManager"

    const-string/jumbo v1, "setFontConfig done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
