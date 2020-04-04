.class Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;
.super Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;
.source "DualDarClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ddar/DualDarClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DualDARClientAgentService"
.end annotation


# instance fields
.field private mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;


# direct methods
.method private constructor <init>(Lcom/samsung/android/knox/ddar/IDualDARClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/knox/ddar/IDualDARClient;Lcom/samsung/android/knox/ddar/DualDarClientManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;-><init>(Lcom/samsung/android/knox/ddar/IDualDARClient;)V

    return-void
.end method


# virtual methods
.method public onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "ORIGINATING_SECURE_CLIENT_ID"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    const/4 v0, -0x1

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v9, "CLEAR_RESET_PASSWORD_TOKEN"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_1
    const-string v9, "ON_PASSWORD2_AUTH"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v9, "ON_BRINGUP"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v0, v8

    goto :goto_0

    :sswitch_3
    const-string v9, "ON_WORKSPACE_CREATION"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v9, "ON_DATA_LOCK_STATE_CHANGE"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_5
    const-string v9, "RESET_PASSWORD_WITH_TOKEN"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_6
    const-string v9, "IS_SUPPORTED"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_7
    const-string v9, "ON_PASSWORD2_CHANGE"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_8
    const-string v9, "SET_RESET_PASSWORD_TOKEN"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_9
    const-string v9, "ON_WORKSPACE_DESTROY"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v0, 0x2

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string/jumbo v0, "user_id"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v6, v0

    const-string v0, "is_data_locked"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v9, v1, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {v9, v6, v0}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onDataLockStateChange(IZ)V

    const-string/jumbo v9, "user_id"

    invoke-virtual {v4, v9, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    :pswitch_1
    const-string v0, "FEATURE"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v9, v1, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {v9, v0}, Lcom/samsung/android/knox/ddar/IDualDARClient;->isSupported(I)Z

    move-result v9

    move v5, v9

    const-string v9, "dual_dar_response"

    invoke-virtual {v4, v9, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v9, "user_id"

    invoke-virtual {v4, v9, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    :pswitch_2
    const-string/jumbo v0, "user_id"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v6, v0

    iget-object v0, v1, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/ddar/securesession/SecureClient;

    const-string v9, "NEW_PASSWORD"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Lcom/samsung/android/knox/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    move-result-object v0

    const-string v9, "RESET_PASSWORD_TOKEN_HANDLE"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    iget-object v9, v1, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/ddar/securesession/SecureClient;

    const-string v10, "RESET_PASSWORD_TOKEN"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Lcom/samsung/android/knox/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    move-result-object v9

    move-object v15, v9

    iget-object v9, v1, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    move v10, v6

    move-object v11, v0

    move-object v14, v15

    invoke-interface/range {v9 .. v14}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onResetPasswordWithToken(I[BJ[B)Z

    move-result v9

    move v5, v9

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/securesession/Wiper;->wipe([B)V

    invoke-static {v15}, Lcom/samsung/android/knox/ddar/securesession/Wiper;->wipe([B)V

    const-string v9, "dual_dar_response"

    invoke-virtual {v4, v9, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v9, "user_id"

    invoke-virtual {v4, v9, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    :pswitch_3
    const-string/jumbo v0, "user_id"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v6, v0

    const-string v0, "RESET_PASSWORD_TOKEN_HANDLE"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    iget-object v0, v1, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {v0, v6, v9, v10}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onClearResetPasswordToken(IJ)V

    const/4 v5, 0x1

    const-string v0, "dual_dar_response"

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "user_id"

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    :pswitch_4
    const-string/jumbo v0, "user_id"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v6, v0

    iget-object v0, v1, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/ddar/securesession/SecureClient;

    const-string v9, "EXISTING_PASSWORD"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Lcom/samsung/android/knox/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    move-result-object v0

    const-string v9, "RESET_PASSWORD_TOKEN_HANDLE"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    iget-object v9, v1, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/ddar/securesession/SecureClient;

    const-string v10, "RESET_PASSWORD_TOKEN"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Lcom/samsung/android/knox/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    move-result-object v9

    move-object v15, v9

    iget-object v9, v1, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    move v10, v6

    move-object v11, v0

    move-object v14, v15

    invoke-interface/range {v9 .. v14}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onSetResetPasswordToken(I[BJ[B)Z

    move-result v9

    move v5, v9

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/securesession/Wiper;->wipe([B)V

    invoke-static {v15}, Lcom/samsung/android/knox/ddar/securesession/Wiper;->wipe([B)V

    const-string v9, "dual_dar_response"

    invoke-virtual {v4, v9, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v9, "user_id"

    invoke-virtual {v4, v9, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    :pswitch_5
    const-string/jumbo v0, "user_id"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v6, v0

    iget-object v0, v1, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/ddar/securesession/SecureClient;

    const-string v9, "EXISTING_PASSWORD"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Lcom/samsung/android/knox/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    move-result-object v0

    iget-object v9, v1, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/ddar/securesession/SecureClient;

    const-string v10, "NEW_PASSWORD"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Lcom/samsung/android/knox/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    move-result-object v9

    iget-object v10, v1, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {v10, v6, v0, v9}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onPasswordChange(I[B[B)Z

    move-result v10

    move v5, v10

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/securesession/Wiper;->wipe([B)V

    invoke-static {v9}, Lcom/samsung/android/knox/ddar/securesession/Wiper;->wipe([B)V

    const-string v10, "dual_dar_response"

    invoke-virtual {v4, v10, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v10, "user_id"

    invoke-virtual {v4, v10, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :pswitch_6
    const-string/jumbo v0, "user_id"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v6, v0

    iget-object v0, v1, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/ddar/securesession/SecureClient;

    const-string v9, "EXISTING_PASSWORD"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Lcom/samsung/android/knox/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    move-result-object v0

    iget-object v9, v1, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {v9, v6, v0}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onPasswordAuth(I[B)Z

    move-result v9

    move v5, v9

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/securesession/Wiper;->wipe([B)V

    const-string v9, "dual_dar_response"

    invoke-virtual {v4, v9, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v9, "user_id"

    invoke-virtual {v4, v9, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :pswitch_7
    const-string/jumbo v0, "user_id"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v6, v0

    iget-object v0, v1, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {v0, v6}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onDualDARDestroyForUser(I)Z

    move-result v0

    move v5, v0

    const-string v0, "dual_dar_response"

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "user_id"

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :pswitch_8
    const-string/jumbo v0, "user_id"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v6, v0

    iget-object v0, v1, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {v0, v6}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onDualDARSetupForUser(I)Z

    move-result v0

    move v5, v0

    const-string v0, "dual_dar_response"

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "user_id"

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :pswitch_9
    iget-object v0, v1, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {v0}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onClientBringup()Z

    move-result v0

    move v5, v0

    const-string v0, "dual_dar_response"

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    const-string v9, "DualDarClientManager"

    const-string v10, "Failed to decrypt function params or complete the function invocation"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v9, "dual_dar_response"

    invoke-virtual {v4, v9, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_2
    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b189c50 -> :sswitch_9
        -0x5bcb73de -> :sswitch_8
        -0x43c5e5a8 -> :sswitch_7
        -0x3c070447 -> :sswitch_6
        -0x40f8dcc -> :sswitch_5
        0x156556dd -> :sswitch_4
        0x36e621c9 -> :sswitch_3
        0x4f85492d -> :sswitch_2
        0x54a37250 -> :sswitch_1
        0x60847f17 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
