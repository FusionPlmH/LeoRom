.class Lcom/samsung/android/settings/qstile/NightThemeTiles$1;
.super Ljava/lang/Object;
.source "NightThemeTiles.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/qstile/NightThemeTiles;->setNightMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/qstile/NightThemeTiles;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/qstile/NightThemeTiles;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles$1;->this$0:Lcom/samsung/android/settings/qstile/NightThemeTiles;

    iput p2, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles$1;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles$1;->this$0:Lcom/samsung/android/settings/qstile/NightThemeTiles;

    iget-object v0, v0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mContext:Landroid/content/Context;

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iget v1, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles$1;->val$value:I

    invoke-virtual {v0, v1}, Landroid/app/UiModeManager;->setNightMode(I)V

    return-void
.end method
