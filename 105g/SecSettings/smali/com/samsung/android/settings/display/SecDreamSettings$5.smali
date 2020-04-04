.class Lcom/samsung/android/settings/display/SecDreamSettings$5;
.super Ljava/lang/Object;
.source "SecDreamSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecDreamSettings;->createWhenToDreamDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecDreamSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecDreamSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$5;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$5;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDreamSettings;->access$500(Lcom/samsung/android/settings/display/SecDreamSettings;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    invoke-virtual {v0, v4}, Lcom/android/settingslib/dream/DreamBackend;->setActivatedOnDock(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$5;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDreamSettings;->access$500(Lcom/samsung/android/settings/display/SecDreamSettings;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v0

    if-eq p2, v3, :cond_3

    if-ne p2, v2, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    :cond_3
    :goto_2
    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/settingslib/dream/DreamBackend;->setActivatedOnSleep(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$5;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/SecDreamSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b03eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDreamSettings;->access$402(I)I

    invoke-static {}, Lcom/samsung/android/settings/display/SecDreamSettings;->access$400()I

    move-result v0

    invoke-static {v0, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void
.end method
