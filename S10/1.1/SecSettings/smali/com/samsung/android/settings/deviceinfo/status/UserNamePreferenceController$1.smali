.class Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController$1;
.super Landroid/os/Handler;
.source "UserNamePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const-string v0, "PrefControllerMixin"

    const-string v1, "handleMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "PrefControllerMixin"

    const-string v1, "USER_NAME_GET response incoming!!"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "response"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->access$002([B)[B

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->access$000()[B

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->access$000()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->access$000()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->access$102(Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;I)I

    const/4 v0, 0x1

    const-string v1, "PrefControllerMixin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NAI_length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->access$100(Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    nop

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->access$100(Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;)I

    move-result v3

    if-ge v2, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->access$000()[B

    move-result-object v4

    add-int v5, v2, v0

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "PrefControllerMixin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user_name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->access$200(Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->access$200(Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    const-string v4, "<Not set>"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method
