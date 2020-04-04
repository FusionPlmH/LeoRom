.class Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$RoundedDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "BaseTimeZonePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoundedDecoration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;


# direct methods
.method private constructor <init>(Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$RoundedDecoration;->this$0:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$RoundedDecoration;-><init>(Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;)V

    return-void
.end method


# virtual methods
.method public seslOnDispatchDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->seslOnDispatchDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    instance-of v4, v3, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$RoundedDecoration;->this$0:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;

    invoke-static {v4}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->access$000(Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;)Landroid/support/v7/util/SeslRoundedCorner;

    move-result-object v4

    invoke-virtual {v4, v2, p1}, Landroid/support/v7/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$RoundedDecoration;->this$0:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;

    invoke-static {v1}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->access$100(Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;)Landroid/support/v7/util/SeslRoundedCorner;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/graphics/Canvas;)V

    return-void
.end method
