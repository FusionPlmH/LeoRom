.class final enum Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu$1;
.super Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;
.source "SoftwareUpdateSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;-><init>(Ljava/lang/String;ILcom/samsung/android/settings/SoftwareUpdateSettings$1;)V

    return-void
.end method


# virtual methods
.method getKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "software_update_screen"

    return-object v0
.end method

.method getTitleId()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUsingSystemUpdateTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1216b5

    return v0

    :cond_0
    const v0, 0x7f121698

    return v0
.end method
