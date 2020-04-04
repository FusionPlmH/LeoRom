.class Lcom/android/server/MCPSPolicy$Builder;
.super Ljava/lang/Object;
.source "McpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MCPSPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# static fields
.field public static final TEMPLATE_DEFAULT:I = 0x0

.field public static final TEMPLATE_MOBILE:I = 0x2


# instance fields
.field private mInts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MCPSPolicy$Builder;->mStrings:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MCPSPolicy$Builder;->mInts:Ljava/util/Map;

    return-void
.end method

.method public static getTemplate(I)Lcom/android/server/MCPSPolicy;
    .locals 2

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    invoke-static {}, Lcom/android/server/MCPSPolicy;->access$000()Lcom/android/server/MCPSPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/MCPSPolicy;->duplicate()Lcom/android/server/MCPSPolicy;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v1, "persist.sys.mcps_level"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/android/server/MCPSPolicy;->access$100()Lcom/android/server/MCPSPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/MCPSPolicy;->duplicate()Lcom/android/server/MCPSPolicy;

    move-result-object v1

    return-object v1

    :pswitch_0
    invoke-static {}, Lcom/android/server/MCPSPolicy;->access$300()Lcom/android/server/MCPSPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/MCPSPolicy;->duplicate()Lcom/android/server/MCPSPolicy;

    move-result-object v1

    return-object v1

    :pswitch_1
    invoke-static {}, Lcom/android/server/MCPSPolicy;->access$200()Lcom/android/server/MCPSPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/MCPSPolicy;->duplicate()Lcom/android/server/MCPSPolicy;

    move-result-object v1

    return-object v1

    :pswitch_2
    invoke-static {}, Lcom/android/server/MCPSPolicy;->access$100()Lcom/android/server/MCPSPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/MCPSPolicy;->duplicate()Lcom/android/server/MCPSPolicy;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-static {}, Lcom/android/server/MCPSPolicy;->access$000()Lcom/android/server/MCPSPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/MCPSPolicy;->duplicate()Lcom/android/server/MCPSPolicy;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public build()Lcom/android/server/MCPSPolicy;
    .locals 3

    new-instance v0, Lcom/android/server/MCPSPolicy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/MCPSPolicy;-><init>(Lcom/android/server/MCPSPolicy$1;)V

    invoke-static {v0}, Lcom/android/server/MCPSPolicy;->access$500(Lcom/android/server/MCPSPolicy;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/MCPSPolicy$Builder;->mStrings:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {v0}, Lcom/android/server/MCPSPolicy;->access$600(Lcom/android/server/MCPSPolicy;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/MCPSPolicy$Builder;->mInts:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public setInt(Ljava/lang/String;I)Lcom/android/server/MCPSPolicy$Builder;
    .locals 2

    if-gez p2, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/MCPSPolicy$Builder;->mInts:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/MCPSPolicy$Builder;
    .locals 1

    const-string/jumbo v0, "mcps_arps_cpu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "rmnet%d"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p2}, Lcom/android/server/McpsService;->valid_hex(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/MCPSPolicy$Builder;->mStrings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
