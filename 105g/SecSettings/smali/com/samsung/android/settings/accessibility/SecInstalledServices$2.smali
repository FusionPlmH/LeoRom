.class Lcom/samsung/android/settings/accessibility/SecInstalledServices$2;
.super Ljava/lang/Object;
.source "SecInstalledServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/SecInstalledServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/SecInstalledServices;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/SecInstalledServices;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/SecInstalledServices$2;->this$0:Lcom/samsung/android/settings/accessibility/SecInstalledServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/SecInstalledServices$2;->this$0:Lcom/samsung/android/settings/accessibility/SecInstalledServices;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/SecInstalledServices$2;->this$0:Lcom/samsung/android/settings/accessibility/SecInstalledServices;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->updateServicePreferences()V

    :cond_0
    return-void
.end method
