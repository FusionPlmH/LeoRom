.class Lcom/samsung/android/settings/display/NightThemeFragment$1;
.super Ljava/lang/Object;
.source "NightThemeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/NightThemeFragment;->setNightMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/NightThemeFragment;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/NightThemeFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/NightThemeFragment$1;->this$0:Lcom/samsung/android/settings/display/NightThemeFragment;

    iput p2, p0, Lcom/samsung/android/settings/display/NightThemeFragment$1;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment$1;->this$0:Lcom/samsung/android/settings/display/NightThemeFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/NightThemeFragment;->access$000(Lcom/samsung/android/settings/display/NightThemeFragment;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iget v1, p0, Lcom/samsung/android/settings/display/NightThemeFragment$1;->val$value:I

    invoke-virtual {v0, v1}, Landroid/app/UiModeManager;->setNightMode(I)V

    return-void
.end method
