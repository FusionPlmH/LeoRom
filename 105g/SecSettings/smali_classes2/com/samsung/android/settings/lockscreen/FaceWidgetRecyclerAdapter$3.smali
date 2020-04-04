.class Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$3;
.super Ljava/lang/Object;
.source "FaceWidgetRecyclerAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;

.field final synthetic val$dragCell:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$3;->this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$3;->val$dragCell:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$3;->this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$3;->val$dragCell:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->getPositionByKey(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$3;->this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->access$100(Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$3;->this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;

    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->setChecked(IZ)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$3;->this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->access$200(Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;)Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$OnCheckChangeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$3;->this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->access$200(Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;)Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$OnCheckChangeListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$OnCheckChangeListener;->onCheckedChange()V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$3;->this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->hasFooter()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$3;->this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->access$100(Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$3;->this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->access$100(Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$FaceWidgetItems;

    invoke-virtual {v4}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$FaceWidgetItems;->getChecked()Z

    move-result v5

    or-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    :goto_1
    move v1, v2

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$3;->this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->access$000(Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "face_widgets_option"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    return-void
.end method
