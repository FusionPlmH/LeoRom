.class Lcom/samsung/android/settings/qstile/NightThemeTiles$2;
.super Ljava/lang/Object;
.source "NightThemeTiles.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/qstile/NightThemeTiles;->updateState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/qstile/NightThemeTiles;

.field final synthetic val$newValue:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/qstile/NightThemeTiles;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles$2;->this$0:Lcom/samsung/android/settings/qstile/NightThemeTiles;

    iput-boolean p2, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles$2;->val$newValue:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles$2;->this$0:Lcom/samsung/android/settings/qstile/NightThemeTiles;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/qstile/NightThemeTiles;->access$102(Lcom/samsung/android/settings/qstile/NightThemeTiles;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles$2;->this$0:Lcom/samsung/android/settings/qstile/NightThemeTiles;

    iget-boolean v1, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles$2;->val$newValue:Z

    invoke-static {v0, v1}, Lcom/samsung/android/settings/qstile/NightThemeTiles;->access$000(Lcom/samsung/android/settings/qstile/NightThemeTiles;Z)V

    return-void
.end method
