.class final enum Lcom/android/settings/search/ReverseSearchService$State;
.super Ljava/lang/Enum;
.source "ReverseSearchService.java"


# static fields
.field private static final synthetic arA:[Lcom/android/settings/search/ReverseSearchService$State;

.field public static final enum ary:Lcom/android/settings/search/ReverseSearchService$State;

.field public static final enum arz:Lcom/android/settings/search/ReverseSearchService$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/android/settings/search/ReverseSearchService$State;

    const-string v1, "UPDATED"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/ReverseSearchService$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/search/ReverseSearchService$State;->ary:Lcom/android/settings/search/ReverseSearchService$State;

    new-instance v0, Lcom/android/settings/search/ReverseSearchService$State;

    const-string v1, "UPDATING"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/search/ReverseSearchService$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/search/ReverseSearchService$State;->arz:Lcom/android/settings/search/ReverseSearchService$State;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/settings/search/ReverseSearchService$State;

    sget-object v1, Lcom/android/settings/search/ReverseSearchService$State;->ary:Lcom/android/settings/search/ReverseSearchService$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/search/ReverseSearchService$State;->arz:Lcom/android/settings/search/ReverseSearchService$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/search/ReverseSearchService$State;->arA:[Lcom/android/settings/search/ReverseSearchService$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/search/ReverseSearchService$State;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/settings/search/ReverseSearchService$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/search/ReverseSearchService$State;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/search/ReverseSearchService$State;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/settings/search/ReverseSearchService$State;->arA:[Lcom/android/settings/search/ReverseSearchService$State;

    invoke-virtual {v0}, [Lcom/android/settings/search/ReverseSearchService$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/search/ReverseSearchService$State;

    return-object v0
.end method
