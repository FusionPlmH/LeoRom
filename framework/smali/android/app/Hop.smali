.class public Landroid/app/Hop;
.super Ljava/lang/Object;
.source "Hop.java"


# static fields
.field private static final BARWIDTH_MAX:I = 0xff

.field private static final BARWIDTH_MIN:I = 0x0

.field private static final INTER_PACKET_DELAY_MAX:I = 0xffff

.field private static final INTER_PACKET_DELAY_MIN:I = 0x1

.field private static final INTER_SYM_DELAY_MAX:I = 0xffff

.field private static final INTER_SYM_DELAY_MIN:I = 0x1

.field private static final PACKET_COUNT_MAX:I = 0xff

.field private static final PACKET_COUNT_MIN:I = 0x1

.field private static final SYMBOL_COUNT_MAX:I = 0xff

.field private static final SYMBOL_COUNT_MIN:I = 0x1


# instance fields
.field public barWidth:I

.field public interPacketDelay:I

.field public interSymbolDelay:I

.field public packetCnt:I

.field public symbolCnt:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    const/16 p1, 0xff

    :cond_1
    :goto_0
    const/4 v1, 0x1

    if-ge p2, v1, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    if-le p2, v0, :cond_3

    const/16 p2, 0xff

    :cond_3
    :goto_1
    const v2, 0xffff

    if-ge p3, v1, :cond_4

    const/4 p3, 0x1

    goto :goto_2

    :cond_4
    if-le p3, v2, :cond_5

    const p3, 0xffff

    :cond_5
    :goto_2
    if-ge p4, v1, :cond_6

    const/4 p4, 0x1

    goto :goto_3

    :cond_6
    if-le p4, v0, :cond_7

    const/16 p4, 0xff

    :cond_7
    :goto_3
    if-ge p5, v1, :cond_8

    const/4 p5, 0x1

    goto :goto_4

    :cond_8
    if-le p5, v2, :cond_9

    const p5, 0xffff

    :cond_9
    :goto_4
    iput p1, p0, Landroid/app/Hop;->barWidth:I

    iput p2, p0, Landroid/app/Hop;->symbolCnt:I

    iput p3, p0, Landroid/app/Hop;->interSymbolDelay:I

    iput p4, p0, Landroid/app/Hop;->packetCnt:I

    iput p5, p0, Landroid/app/Hop;->interPacketDelay:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/app/Hop;->barWidth:I

    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/Hop;->symbolCnt:I

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/Hop;->interSymbolDelay:I

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/Hop;->packetCnt:I

    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/Hop;->interPacketDelay:I

    iget v3, p0, Landroid/app/Hop;->barWidth:I

    const/16 v4, 0xff

    if-gez v3, :cond_0

    iput v1, p0, Landroid/app/Hop;->barWidth:I

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/app/Hop;->barWidth:I

    if-le v1, v4, :cond_1

    iput v4, p0, Landroid/app/Hop;->barWidth:I

    :cond_1
    :goto_0
    iget v1, p0, Landroid/app/Hop;->symbolCnt:I

    if-ge v1, v2, :cond_2

    iput v2, p0, Landroid/app/Hop;->symbolCnt:I

    goto :goto_1

    :cond_2
    iget v1, p0, Landroid/app/Hop;->symbolCnt:I

    if-le v1, v4, :cond_3

    iput v4, p0, Landroid/app/Hop;->symbolCnt:I

    :cond_3
    :goto_1
    iget v1, p0, Landroid/app/Hop;->interSymbolDelay:I

    const v3, 0xffff

    if-ge v1, v2, :cond_4

    iput v2, p0, Landroid/app/Hop;->interSymbolDelay:I

    goto :goto_2

    :cond_4
    iget v1, p0, Landroid/app/Hop;->interSymbolDelay:I

    if-le v1, v3, :cond_5

    iput v3, p0, Landroid/app/Hop;->interSymbolDelay:I

    :cond_5
    :goto_2
    iget v1, p0, Landroid/app/Hop;->packetCnt:I

    if-ge v1, v2, :cond_6

    iput v2, p0, Landroid/app/Hop;->packetCnt:I

    goto :goto_3

    :cond_6
    iget v1, p0, Landroid/app/Hop;->packetCnt:I

    if-le v1, v4, :cond_7

    iput v4, p0, Landroid/app/Hop;->packetCnt:I

    :cond_7
    :goto_3
    iget v1, p0, Landroid/app/Hop;->interPacketDelay:I

    if-ge v1, v2, :cond_8

    iput v2, p0, Landroid/app/Hop;->interPacketDelay:I

    goto :goto_4

    :cond_8
    iget v1, p0, Landroid/app/Hop;->interPacketDelay:I

    if-le v1, v3, :cond_9

    iput v3, p0, Landroid/app/Hop;->interPacketDelay:I

    :cond_9
    :goto_4
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/app/Hop;->barWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/Hop;->symbolCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/Hop;->interSymbolDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/Hop;->packetCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/Hop;->interPacketDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
