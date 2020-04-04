.class Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;
.super Ljava/lang/Object;
.source "TapAndPaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/TapAndPaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "TapAndPaySettings"

    const-string v1, "showLmrtFullDialog onclick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
