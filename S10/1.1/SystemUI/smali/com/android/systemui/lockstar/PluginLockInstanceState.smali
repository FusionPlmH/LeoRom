.class public Lcom/android/systemui/lockstar/PluginLockInstanceState;
.super Ljava/lang/Object;
.source "PluginLockInstanceState.java"


# instance fields
.field private mAllowedNumber:I

.field private mContext:Landroid/content/Context;

.field private mCr:Landroid/content/ContentResolver;

.field private mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

.field private mGson:Lcom/google/gson/Gson;

.field private mInstance:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

.field private mIsDestroyed:Z

.field private mMode:I

.field private mPackageName:Ljava/lang/String;

.field private mTimeStamp:J


# direct methods
.method public constructor <init>(Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mMode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mIsDestroyed:Z

    const-string v0, "PluginLockInstanceState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PluginLockInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    iput-object p2, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mCr:Landroid/content/ContentResolver;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mTimeStamp:J

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mGson:Lcom/google/gson/Gson;

    :try_start_0
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;->getServiceType()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    const-string v1, "PluginLockInstanceState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PluginLockInstanceState mPackageName["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "PluginLockInstanceState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PluginLockInstanceState Throwable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getVersion()I

    move-result v0

    const/16 v1, 0x44c

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mMode:I

    invoke-direct {p0}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->initInstanceData()V

    :cond_1
    const-string v0, "PluginLockInstanceState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initInstanceData()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mCr:Landroid/content/ContentResolver;

    const-string v1, "key_plugin_lock_instance_data"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockInstanceState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initInstanceData list = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    const/16 v3, 0x2710

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0xa

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mGson:Lcom/google/gson/Gson;

    const-class v8, Lcom/android/systemui/lockstar/PluginLockInstanceData;

    invoke-virtual {v7, v0, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/lockstar/PluginLockInstanceData;

    iget-object v8, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/systemui/lockstar/PluginLockInstanceData;->contain(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    new-instance v8, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-direct {v8}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-virtual {v7}, Lcom/android/systemui/lockstar/PluginLockInstanceData;->getDataList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget v9, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mMode:I

    if-ne v9, v5, :cond_2

    mul-int/lit8 v3, v8, 0xa

    add-int/2addr v3, v6

    iput v3, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mAllowedNumber:I

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mMode:I

    if-ne v5, v4, :cond_3

    mul-int/lit8 v4, v8, 0xa

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mAllowedNumber:I

    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    iget-object v4, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->setPackageName(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    iget v4, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mAllowedNumber:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->setNumber(Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->setTimeStamp(Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-virtual {v7, v1}, Lcom/android/systemui/lockstar/PluginLockInstanceData;->addData(Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;)V

    invoke-direct {p0, v7}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->updateDb(Lcom/android/systemui/lockstar/PluginLockInstanceData;)V

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/android/systemui/lockstar/PluginLockInstanceData;->getData(Ljava/lang/String;)Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-virtual {v1}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->getNumber()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mAllowedNumber:I

    goto :goto_3

    :cond_5
    :goto_1
    new-instance v7, Lcom/android/systemui/lockstar/PluginLockInstanceData;

    invoke-direct {v7}, Lcom/android/systemui/lockstar/PluginLockInstanceData;-><init>()V

    new-instance v8, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-direct {v8}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    iget v8, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mMode:I

    if-ne v8, v5, :cond_6

    iput v6, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mAllowedNumber:I

    goto :goto_2

    :cond_6
    iget v5, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mMode:I

    if-ne v5, v4, :cond_7

    iput v3, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mAllowedNumber:I

    :cond_7
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    iget-object v4, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->setPackageName(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    iget v4, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mAllowedNumber:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->setNumber(Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->setTimeStamp(Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-virtual {v7, v1}, Lcom/android/systemui/lockstar/PluginLockInstanceData;->addData(Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;)V

    invoke-direct {p0, v7}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->updateDb(Lcom/android/systemui/lockstar/PluginLockInstanceData;)V

    nop

    :cond_8
    :goto_3
    const-string v1, "PluginLockInstanceState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initInstanceData setAllowedNumber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mAllowedNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mAllowedNumber:I

    invoke-interface {v1, v2}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;->setAllowedNumber(I)V

    return-void
.end method

.method private updateDb(Lcom/android/systemui/lockstar/PluginLockInstanceData;)V
    .locals 3

    const-string v0, "PluginLockInstanceState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update instance data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mCr:Landroid/content/ContentResolver;

    const-string v1, "key_plugin_lock_instance_data"

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const-string v0, "PluginLockInstanceState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;->setCallback(Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;->setPanelView(Landroid/view/ViewGroup;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getAppShortcutManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarAppShortcutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getAppShortcutManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarAppShortcutManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarAppShortcutManager;->setCallback(Lcom/samsung/systemui/splugins/lockstar/PluginLockStarAppShortcutManager$Callback;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getTaskShortcutManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getTaskShortcutManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager;->setCallback(Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$Callback;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getIndicationTextManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarIndicationTextManager;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getIndicationTextManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarIndicationTextManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarIndicationTextManager;->setCallback(Lcom/samsung/systemui/splugins/lockstar/PluginLockStarIndicationTextManager$Callback;)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getStatusBarManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarStatusBarManager;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getStatusBarManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarStatusBarManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarStatusBarManager;->setCallback(Lcom/samsung/systemui/splugins/lockstar/PluginLockStarStatusBarManager$Callback;)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getFaceWidgetManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarFaceWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getFaceWidgetManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarFaceWidgetManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarFaceWidgetManager;->setCallback(Lcom/samsung/systemui/splugins/lockstar/PluginLockStarFaceWidgetManager$Callback;)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getNotificationManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getNotificationManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarNotificationManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarNotificationManager;->setCallback(Lcom/samsung/systemui/splugins/lockstar/PluginLockStarNotificationManager$Callback;)V

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->onDestroy()V

    iput-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    iput-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mTimeStamp:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mIsDestroyed:Z

    return-void
.end method

.method public getAllowedNumber()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mAllowedNumber:I

    return v0
.end method

.method public getData()Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginLockContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPluginLockInstance()Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    return-object v0
.end method

.method public getRecoverData()Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->getRecoverData()Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isRecentInstance()Z
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mCr:Landroid/content/ContentResolver;

    const-string v1, "key_plugin_lock_instance_data"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mGson:Lcom/google/gson/Gson;

    const-class v2, Lcom/android/systemui/lockstar/PluginLockInstanceData;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/lockstar/PluginLockInstanceData;

    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Lcom/android/systemui/lockstar/PluginLockInstanceData;->getDataList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-virtual {v5}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_0

    invoke-virtual {v5}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_0
    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-virtual {v4}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-virtual {v4}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_3

    const-string v5, "PluginLockInstanceState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isRecentInstance() true, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v4
.end method

.method public setTimeStamp(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mTimeStamp:J

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mTimeStamp:J

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    iget-wide v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mTimeStamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->setTimeStamp(Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->updateDb()V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "packageName["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], timestamp["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "], instance["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDb()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mCr:Landroid/content/ContentResolver;

    const-string v1, "key_plugin_lock_instance_data"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    new-instance v1, Lcom/android/systemui/lockstar/PluginLockInstanceData;

    invoke-direct {v1}, Lcom/android/systemui/lockstar/PluginLockInstanceData;-><init>()V

    new-instance v2, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-direct {v2}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    iget v2, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/16 v2, 0xa

    iput v2, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mAllowedNumber:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const/16 v2, 0x2710

    iput v2, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mAllowedNumber:I

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->setPackageName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    iget v3, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mAllowedNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->setNumber(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-virtual {v1, v2}, Lcom/android/systemui/lockstar/PluginLockInstanceData;->addData(Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;)V

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mGson:Lcom/google/gson/Gson;

    const-class v2, Lcom/android/systemui/lockstar/PluginLockInstanceData;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/lockstar/PluginLockInstanceData;

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/lockstar/PluginLockInstanceData;->getData(Ljava/lang/String;)Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-virtual {v3}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->getNumber()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->setNumber(Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-virtual {v3}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->setTimeStamp(Ljava/lang/Long;)V

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockInstanceState;->mData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-virtual {v3}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->getRecoverData()Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->setRecoverData(Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;)V

    :cond_5
    invoke-direct {p0, v1}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->updateDb(Lcom/android/systemui/lockstar/PluginLockInstanceData;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
