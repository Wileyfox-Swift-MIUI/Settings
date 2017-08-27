.class public final Lcom/xiaomi/push/b/h;
.super Lcom/google/protobuf/micro/c;
.source "ChannelMessage.java"


# instance fields
.field private bcS:I

.field private bdQ:I

.field private bdR:Z

.field private bdS:Ljava/lang/String;

.field private bdT:Z

.field private bdU:Ljava/lang/String;

.field private bdV:Z

.field private bdW:Ljava/lang/String;

.field private bdX:Z

.field private bdY:I

.field private bdZ:Z

.field private bea:Ljava/lang/String;

.field private beb:Z

.field private bec:Ljava/lang/String;

.field private bed:Z

.field private bee:Ljava/lang/String;

.field private bef:Z

.field private beg:Lcom/xiaomi/push/b/e;

.field private beh:Z

.field private bei:I

.field private hasVersion:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 589
    invoke-direct {p0}, Lcom/google/protobuf/micro/c;-><init>()V

    .line 594
    iput v1, p0, Lcom/xiaomi/push/b/h;->bdQ:I

    .line 611
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/h;->bdS:Ljava/lang/String;

    .line 628
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/h;->bdU:Ljava/lang/String;

    .line 645
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/h;->bdW:Ljava/lang/String;

    .line 662
    iput v1, p0, Lcom/xiaomi/push/b/h;->bdY:I

    .line 679
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/h;->bea:Ljava/lang/String;

    .line 696
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/h;->bec:Ljava/lang/String;

    .line 713
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/h;->bee:Ljava/lang/String;

    .line 730
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/b/h;->beg:Lcom/xiaomi/push/b/e;

    .line 750
    iput v1, p0, Lcom/xiaomi/push/b/h;->bei:I

    .line 818
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/b/h;->bcS:I

    .line 589
    return-void
.end method


# virtual methods
.method public FQ()I
    .locals 1

    .prologue
    .line 821
    iget v0, p0, Lcom/xiaomi/push/b/h;->bcS:I

    if-gez v0, :cond_0

    .line 823
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->getSerializedSize()I

    .line 825
    :cond_0
    iget v0, p0, Lcom/xiaomi/push/b/h;->bcS:I

    return v0
.end method

.method public II()Z
    .locals 1

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/xiaomi/push/b/h;->hasVersion:Z

    return v0
.end method

.method public IJ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/xiaomi/push/b/h;->bdU:Ljava/lang/String;

    return-object v0
.end method

.method public IK()Z
    .locals 1

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/xiaomi/push/b/h;->bdT:Z

    return v0
.end method

.method public IL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/xiaomi/push/b/h;->bdW:Ljava/lang/String;

    return-object v0
.end method

.method public IM()Z
    .locals 1

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/xiaomi/push/b/h;->bdV:Z

    return v0
.end method

.method public IN()I
    .locals 1

    .prologue
    .line 663
    iget v0, p0, Lcom/xiaomi/push/b/h;->bdY:I

    return v0
.end method

.method public IO()Z
    .locals 1

    .prologue
    .line 664
    iget-boolean v0, p0, Lcom/xiaomi/push/b/h;->bdX:Z

    return v0
.end method

.method public IP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/xiaomi/push/b/h;->bea:Ljava/lang/String;

    return-object v0
.end method

.method public IQ()Z
    .locals 1

    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/xiaomi/push/b/h;->bdZ:Z

    return v0
.end method

.method public IR()Z
    .locals 1

    .prologue
    .line 698
    iget-boolean v0, p0, Lcom/xiaomi/push/b/h;->beb:Z

    return v0
.end method

.method public IS()Z
    .locals 1

    .prologue
    .line 715
    iget-boolean v0, p0, Lcom/xiaomi/push/b/h;->bed:Z

    return v0
.end method

.method public IT()Z
    .locals 1

    .prologue
    .line 731
    iget-boolean v0, p0, Lcom/xiaomi/push/b/h;->bef:Z

    return v0
.end method

.method public IU()Lcom/xiaomi/push/b/e;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/xiaomi/push/b/h;->beg:Lcom/xiaomi/push/b/e;

    return-object v0
.end method

.method public IV()I
    .locals 1

    .prologue
    .line 751
    iget v0, p0, Lcom/xiaomi/push/b/h;->bei:I

    return v0
.end method

.method public IW()Z
    .locals 1

    .prologue
    .line 752
    iget-boolean v0, p0, Lcom/xiaomi/push/b/h;->beh:Z

    return v0
.end method

.method public synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;
    .locals 1

    .prologue
    .line 586
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/b/h;->h(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/b/h;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/xiaomi/push/b/e;)Lcom/xiaomi/push/b/h;
    .locals 1

    .prologue
    .line 734
    if-nez p1, :cond_0

    .line 735
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 737
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/h;->bef:Z

    .line 738
    iput-object p1, p0, Lcom/xiaomi/push/b/h;->beg:Lcom/xiaomi/push/b/e;

    .line 739
    return-object p0
.end method

.method public a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2

    .prologue
    .line 786
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->II()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->getVersion()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 789
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->hasModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 790
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 792
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->IK()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 793
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->IJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 795
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->IM()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 796
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->IL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 798
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->IO()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 799
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->IN()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 801
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->IQ()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 802
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->IP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 804
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->IR()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 805
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 807
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->IS()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 808
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 810
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->IT()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 811
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->IU()Lcom/xiaomi/push/b/e;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILcom/google/protobuf/micro/c;)V

    .line 813
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->IW()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 814
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->IV()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 816
    :cond_9
    return-void
.end method

.method public eg(Ljava/lang/String;)Lcom/xiaomi/push/b/h;
    .locals 1

    .prologue
    .line 615
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/h;->bdR:Z

    .line 616
    iput-object p1, p0, Lcom/xiaomi/push/b/h;->bdS:Ljava/lang/String;

    .line 617
    return-object p0
.end method

.method public eh(Ljava/lang/String;)Lcom/xiaomi/push/b/h;
    .locals 1

    .prologue
    .line 632
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/h;->bdT:Z

    .line 633
    iput-object p1, p0, Lcom/xiaomi/push/b/h;->bdU:Ljava/lang/String;

    .line 634
    return-object p0
.end method

.method public ei(Ljava/lang/String;)Lcom/xiaomi/push/b/h;
    .locals 1

    .prologue
    .line 649
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/h;->bdV:Z

    .line 650
    iput-object p1, p0, Lcom/xiaomi/push/b/h;->bdW:Ljava/lang/String;

    .line 651
    return-object p0
.end method

.method public ej(Ljava/lang/String;)Lcom/xiaomi/push/b/h;
    .locals 1

    .prologue
    .line 683
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/h;->bdZ:Z

    .line 684
    iput-object p1, p0, Lcom/xiaomi/push/b/h;->bea:Ljava/lang/String;

    .line 685
    return-object p0
.end method

.method public ek(Ljava/lang/String;)Lcom/xiaomi/push/b/h;
    .locals 1

    .prologue
    .line 700
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/h;->beb:Z

    .line 701
    iput-object p1, p0, Lcom/xiaomi/push/b/h;->bec:Ljava/lang/String;

    .line 702
    return-object p0
.end method

.method public el(Ljava/lang/String;)Lcom/xiaomi/push/b/h;
    .locals 1

    .prologue
    .line 717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/h;->bed:Z

    .line 718
    iput-object p1, p0, Lcom/xiaomi/push/b/h;->bee:Ljava/lang/String;

    .line 719
    return-object p0
.end method

.method public fa(I)Lcom/xiaomi/push/b/h;
    .locals 1

    .prologue
    .line 598
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/h;->hasVersion:Z

    .line 599
    iput p1, p0, Lcom/xiaomi/push/b/h;->bdQ:I

    .line 600
    return-object p0
.end method

.method public fb(I)Lcom/xiaomi/push/b/h;
    .locals 1

    .prologue
    .line 666
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/h;->bdX:Z

    .line 667
    iput p1, p0, Lcom/xiaomi/push/b/h;->bdY:I

    .line 668
    return-object p0
.end method

.method public fc(I)Lcom/xiaomi/push/b/h;
    .locals 1

    .prologue
    .line 754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/h;->beh:Z

    .line 755
    iput p1, p0, Lcom/xiaomi/push/b/h;->bei:I

    .line 756
    return-object p0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/xiaomi/push/b/h;->bec:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/xiaomi/push/b/h;->bee:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/xiaomi/push/b/h;->bdS:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 830
    const/4 v0, 0x0

    .line 831
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->II()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 832
    const/4 v1, 0x1

    .line 833
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->getVersion()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 835
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->hasModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 836
    const/4 v1, 0x2

    .line 837
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 839
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->IK()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 840
    const/4 v1, 0x3

    .line 841
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->IJ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 843
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->IM()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 844
    const/4 v1, 0x4

    .line 845
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->IL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 847
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->IO()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 848
    const/4 v1, 0x5

    .line 849
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->IN()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 851
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->IQ()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 852
    const/4 v1, 0x6

    .line 853
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->IP()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 855
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->IR()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 856
    const/4 v1, 0x7

    .line 857
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 859
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->IS()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 860
    const/16 v1, 0x8

    .line 861
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 863
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->IT()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 864
    const/16 v1, 0x9

    .line 865
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->IU()Lcom/xiaomi/push/b/e;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 867
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->IW()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 868
    const/16 v1, 0xa

    .line 869
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->IV()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 871
    :cond_9
    iput v0, p0, Lcom/xiaomi/push/b/h;->bcS:I

    .line 872
    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Lcom/xiaomi/push/b/h;->bdQ:I

    return v0
.end method

.method public h(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/b/h;
    .locals 1

    .prologue
    .line 880
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readTag()I

    move-result v0

    .line 881
    sparse-switch v0, :sswitch_data_0

    .line 885
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/b/h;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 886
    :sswitch_0
    return-object p0

    .line 891
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readUInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/h;->fa(I)Lcom/xiaomi/push/b/h;

    goto :goto_0

    .line 895
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/h;->eg(Ljava/lang/String;)Lcom/xiaomi/push/b/h;

    goto :goto_0

    .line 899
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/h;->eh(Ljava/lang/String;)Lcom/xiaomi/push/b/h;

    goto :goto_0

    .line 903
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/h;->ei(Ljava/lang/String;)Lcom/xiaomi/push/b/h;

    goto :goto_0

    .line 907
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/h;->fb(I)Lcom/xiaomi/push/b/h;

    goto :goto_0

    .line 911
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/h;->ej(Ljava/lang/String;)Lcom/xiaomi/push/b/h;

    goto :goto_0

    .line 915
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/h;->ek(Ljava/lang/String;)Lcom/xiaomi/push/b/h;

    goto :goto_0

    .line 919
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/h;->el(Ljava/lang/String;)Lcom/xiaomi/push/b/h;

    goto :goto_0

    .line 923
    :sswitch_9
    new-instance v0, Lcom/xiaomi/push/b/e;

    invoke-direct {v0}, Lcom/xiaomi/push/b/e;-><init>()V

    .line 924
    invoke-virtual {p1, v0}, Lcom/google/protobuf/micro/b;->a(Lcom/google/protobuf/micro/c;)V

    .line 925
    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/h;->a(Lcom/xiaomi/push/b/e;)Lcom/xiaomi/push/b/h;

    goto :goto_0

    .line 929
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/h;->fc(I)Lcom/xiaomi/push/b/h;

    goto :goto_0

    .line 881
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
    .end sparse-switch
.end method

.method public hasModel()Z
    .locals 1

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/xiaomi/push/b/h;->bdR:Z

    return v0
.end method
