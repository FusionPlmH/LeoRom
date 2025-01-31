.class public final Landroid/support/v4/graphics/PathSegment;
.super Ljava/lang/Object;
.source "PathSegment.java"


# instance fields
.field private final mEnd:Landroid/graphics/PointF;

.field private final mEndFraction:F

.field private final mStart:Landroid/graphics/PointF;

.field private final mStartFraction:F


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/support/v4/graphics/PathSegment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/support/v4/graphics/PathSegment;

    iget v3, p0, Landroid/support/v4/graphics/PathSegment;->mStartFraction:F

    iget v4, v1, Landroid/support/v4/graphics/PathSegment;->mStartFraction:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Landroid/support/v4/graphics/PathSegment;->mEndFraction:F

    iget v4, v1, Landroid/support/v4/graphics/PathSegment;->mEndFraction:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/graphics/PathSegment;->mStart:Landroid/graphics/PointF;

    iget-object v4, v1, Landroid/support/v4/graphics/PathSegment;->mStart:Landroid/graphics/PointF;

    invoke-virtual {v3, v4}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/graphics/PathSegment;->mEnd:Landroid/graphics/PointF;

    iget-object v4, v1, Landroid/support/v4/graphics/PathSegment;->mEnd:Landroid/graphics/PointF;

    invoke-virtual {v3, v4}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Landroid/support/v4/graphics/PathSegment;->mStart:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/PointF;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget v3, p0, Landroid/support/v4/graphics/PathSegment;->mStartFraction:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/support/v4/graphics/PathSegment;->mStartFraction:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    add-int/2addr v2, v3

    mul-int v0, v1, v2

    iget-object v3, p0, Landroid/support/v4/graphics/PathSegment;->mEnd:Landroid/graphics/PointF;

    invoke-virtual {v3}, Landroid/graphics/PointF;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/support/v4/graphics/PathSegment;->mEndFraction:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/support/v4/graphics/PathSegment;->mEndFraction:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    nop

    :cond_1
    add-int/2addr v1, v5

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PathSegment{start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/graphics/PathSegment;->mStart:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startFraction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/graphics/PathSegment;->mStartFraction:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/graphics/PathSegment;->mEnd:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endFraction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/graphics/PathSegment;->mEndFraction:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
