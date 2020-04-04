.class public Lcom/samsung/android/os/SemAffinityControl;
.super Ljava/lang/Object;
.source "SemAffinityControl.java"


# static fields
.field public static final DEBUG:Z

.field private static final HMP_CORE_FRONT:I = 0x0

.field private static final HMP_CORE_REAR:I = 0x1

.field private static final HMP_PROPERTY:Ljava/lang/String; = "4:4"

.field private static final TAG:Ljava/lang/String; = "SemAffinityControl"

.field private static nBig:[I

.field private static nLittle:[I

.field private static strHmpCore:[Ljava/lang/String;


# instance fields
.field private bigIndex:I

.field private core_num:I

.field private littleIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/os/SemAffinityControl;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/os/SemAffinityControl;->strHmpCore:[Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/os/SemAffinityControl;->nLittle:[I

    sput-object v0, Lcom/samsung/android/os/SemAffinityControl;->nBig:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/os/SemAffinityControl;->littleIndex:I

    iput v0, p0, Lcom/samsung/android/os/SemAffinityControl;->bigIndex:I

    iput v0, p0, Lcom/samsung/android/os/SemAffinityControl;->core_num:I

    const-string v0, "SemAffinityControl"

    const-string v1, "[Java Side], SemAffinityControl Class Initialized"

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "4:4"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "4:4"

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/os/SemAffinityControl;->strHmpCore:[Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/os/SemAffinityControl;->strHmpCore:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "B"

    sget-object v4, Lcom/samsung/android/os/SemAffinityControl;->strHmpCore:[Ljava/lang/String;

    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v3, p0, Lcom/samsung/android/os/SemAffinityControl;->littleIndex:I

    iput v2, p0, Lcom/samsung/android/os/SemAffinityControl;->bigIndex:I

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/samsung/android/os/SemAffinityControl;->littleIndex:I

    iput v3, p0, Lcom/samsung/android/os/SemAffinityControl;->bigIndex:I

    :goto_0
    sget-object v0, Lcom/samsung/android/os/SemAffinityControl;->strHmpCore:[Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/os/SemAffinityControl;->littleIndex:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/os/SemAffinityControl;->nLittle:[I

    sget-object v0, Lcom/samsung/android/os/SemAffinityControl;->strHmpCore:[Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/os/SemAffinityControl;->bigIndex:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/os/SemAffinityControl;->nBig:[I

    sget-object v0, Lcom/samsung/android/os/SemAffinityControl;->strHmpCore:[Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/os/SemAffinityControl;->littleIndex:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/samsung/android/os/SemAffinityControl;->strHmpCore:[Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/os/SemAffinityControl;->bigIndex:I

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/os/SemAffinityControl;->core_num:I

    const-string v0, "SemAffinityControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Java Side], SemAffinityControl Class Initialized core_num : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/os/SemAffinityControl;->core_num:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/os/SemAffinityControl;->nLittle:[I

    array-length v1, v1

    iget v4, p0, Lcom/samsung/android/os/SemAffinityControl;->littleIndex:I

    if-ne v4, v3, :cond_1

    sget-object v3, Lcom/samsung/android/os/SemAffinityControl;->nBig:[I

    array-length v0, v3

    const/4 v1, 0x0

    :cond_1
    move v3, v2

    :goto_1
    sget-object v4, Lcom/samsung/android/os/SemAffinityControl;->nLittle:[I

    array-length v4, v4

    if-ge v3, v4, :cond_2

    sget-object v4, Lcom/samsung/android/os/SemAffinityControl;->nLittle:[I

    add-int v5, v3, v0

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    nop

    :goto_2
    sget-object v3, Lcom/samsung/android/os/SemAffinityControl;->nBig:[I

    array-length v3, v3

    if-ge v2, v3, :cond_3

    sget-object v3, Lcom/samsung/android/os/SemAffinityControl;->nBig:[I

    add-int v4, v2, v1

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/os/SemAffinityControl;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private native native_set_affinity(I[I)I
.end method

.method public static readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readSysfs:: path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", strTemp result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const-string v4, "e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    :goto_1
    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_2
    return-object v0

    :goto_3
    nop

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :cond_1
    :goto_4
    throw v2
.end method


# virtual methods
.method public clearAffinity(I)I
    .locals 5

    iget v0, p0, Lcom/samsung/android/os/SemAffinityControl;->core_num:I

    if-gez v0, :cond_1

    const-string v0, "SemAffinityControl"

    const-string v1, "/sys/devices/system/cpu/kernel_max"

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemAffinityControl;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/os/SemAffinityControl;->core_num:I

    const-string v1, "SemAffinityControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Java Side], clearAffinity num_of_core : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", core_num : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/os/SemAffinityControl;->core_num:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "SemAffinityControl"

    const-string v2, "clear_affinity_failed. It can\'t read the num of core"

    invoke-static {v1, v2}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1

    :cond_1
    :goto_0
    iget v0, p0, Lcom/samsung/android/os/SemAffinityControl;->core_num:I

    const/4 v1, 0x1

    if-lez v0, :cond_4

    iget v0, p0, Lcom/samsung/android/os/SemAffinityControl;->core_num:I

    add-int/2addr v0, v1

    new-array v0, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    iget v4, p0, Lcom/samsung/android/os/SemAffinityControl;->core_num:I

    if-gt v3, v4, :cond_2

    aput v3, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/os/SemAffinityControl;->native_set_affinity(I[I)I

    move-result v3

    if-ne v3, v1, :cond_3

    const-string v2, "SemAffinityControl"

    const-string v3, "clear_affinity_failed"

    invoke-static {v2, v3}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    const-string v1, "SemAffinityControl"

    const-string v3, "clear_affinity_success"

    invoke-static {v1, v3}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_4
    const-string v0, "SemAffinityControl"

    const-string v2, "clear_affinity_failed"

    invoke-static {v0, v2}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public varargs setAffinity(I[I)I
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/os/SemAffinityControl;->native_set_affinity(I[I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "SemAffinityControl"

    const-string/jumbo v2, "sched_set_affinity_failed"

    invoke-static {v0, v2}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "SemAffinityControl"

    const-string/jumbo v1, "sched_set_affinity_success"

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public setAffinityForBig(I)I
    .locals 3

    const-string v0, "4:4"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    sget-object v0, Lcom/samsung/android/os/SemAffinityControl;->nBig:[I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/os/SemAffinityControl;->native_set_affinity(I[I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "SemAffinityControl"

    const-string/jumbo v2, "sched_set_affinity_failed"

    invoke-static {v0, v2}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "SemAffinityControl"

    const-string/jumbo v1, "sched_set_affinity_success"

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method public setAffinityForLittle(I)I
    .locals 3

    const-string v0, "4:4"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    sget-object v0, Lcom/samsung/android/os/SemAffinityControl;->nLittle:[I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/os/SemAffinityControl;->native_set_affinity(I[I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "SemAffinityControl"

    const-string/jumbo v2, "sched_set_affinity_failed"

    invoke-static {v0, v2}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "SemAffinityControl"

    const-string/jumbo v1, "sched_set_affinity_success"

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method
