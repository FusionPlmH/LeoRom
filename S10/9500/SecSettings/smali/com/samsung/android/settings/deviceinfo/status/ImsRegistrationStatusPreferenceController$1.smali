.class Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController$1;
.super Ljava/lang/Object;
.source "ImsRegistrationStatusPreferenceController.java"

# interfaces
.implements Lcom/sec/ims/ImsManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->createImsService(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;

    iput p2, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController$1;->val$slotId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->access$000(Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;)[Z

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController$1;->val$slotId:I

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;

    iget v4, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController$1;->val$slotId:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->isImsRegistered(I)Z

    move-result v3

    aput-boolean v3, v1, v2

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->access$000(Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;)[Z

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController$1;->val$slotId:I

    aget-boolean v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->access$000(Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;)[Z

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController$1;->val$slotId:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->access$100(Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;)I

    move-result v3

    rem-int/2addr v2, v3

    aget-boolean v0, v1, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->updateImsStatus(Z)V

    return-void
.end method

.method public onDisconnected()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->access$200(Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;)[Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController$1;->val$slotId:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method
