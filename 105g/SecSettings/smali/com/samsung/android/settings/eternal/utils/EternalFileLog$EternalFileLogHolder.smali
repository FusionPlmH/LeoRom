.class Lcom/samsung/android/settings/eternal/utils/EternalFileLog$EternalFileLogHolder;
.super Ljava/lang/Object;
.source "EternalFileLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/eternal/utils/EternalFileLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EternalFileLogHolder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/samsung/android/settings/eternal/utils/EternalFileLog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;-><init>(Lcom/samsung/android/settings/eternal/utils/EternalFileLog$1;)V

    sput-object v0, Lcom/samsung/android/settings/eternal/utils/EternalFileLog$EternalFileLogHolder;->INSTANCE:Lcom/samsung/android/settings/eternal/utils/EternalFileLog;

    return-void
.end method
