.class Lcom/android/settings/users/EditUserPhotoController$2;
.super Ljava/lang/Object;
.source "EditUserPhotoController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic awr:Lcom/android/settings/users/EditUserPhotoController;

.field final synthetic aws:Ljava/util/List;

.field final synthetic awt:Landroid/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/android/settings/users/EditUserPhotoController;Ljava/util/List;Landroid/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/settings/users/EditUserPhotoController$2;->awr:Lcom/android/settings/users/EditUserPhotoController;

    iput-object p2, p0, Lcom/android/settings/users/EditUserPhotoController$2;->aws:Ljava/util/List;

    iput-object p3, p0, Lcom/android/settings/users/EditUserPhotoController$2;->awt:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController$2;->aws:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/users/EditUserPhotoController$AdapterItem;

    .line 169
    iget v0, v0, Lcom/android/settings/users/EditUserPhotoController$AdapterItem;->id:I

    packed-switch v0, :pswitch_data_0

    .line 179
    :goto_0
    return-void

    .line 171
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController$2;->awr:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v0}, Lcom/android/settings/users/EditUserPhotoController;->b(Lcom/android/settings/users/EditUserPhotoController;)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController$2;->awt:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_0

    .line 175
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController$2;->awr:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v0}, Lcom/android/settings/users/EditUserPhotoController;->c(Lcom/android/settings/users/EditUserPhotoController;)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController$2;->awt:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
