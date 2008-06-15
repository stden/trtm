// Unit:           trtm_types provides main types for trtm project
// By:             Sergey Sobolev
// Version:        1.02
// Last modified:  14.04.05 22:52
//
// History
unit trtm_types;



interface

const
    MAX_METHODS            = 40;
    MAX_ID                 = 39;
    MAX_METHODS_PER_CELL   = 4;

type TTRTM_Method_Text     = record
                               mname     : string;
                               mexample1 : string;
                               mexample2 : string;
                             end;

type
    TTRTM_Methods_Text      = array [ 1 .. MAX_METHODS ] of TTRTM_Method_Text;




type
    TTRTM_Methods_Cell      = array [ 1 .. MAX_METHODS_PER_CELL ] of word;

type
    TPTRTM_Methods_Cell     = ^TTRTM_Methods_Cell;

type
    TTRTM_Objects_Raw       = array [ 1 .. MAX_ID ] of TTRTM_Methods_Cell;

type
    TTRTM_Object            = record
                                id   : word;
                                desc : string;
                                sol  : TTRTM_Objects_Raw;
                              end;

type
    TPWord                  = ^word;

type
    TTRTM_Table             = array [ 1 .. MAX_ID ] of TTRTM_Object;

type
    TTRTM_Methods_Set       = array of TTRTM_Methods_Cell;

type
    TTRTM_Methods_Indexes   = array [ 1 .. MAX_METHODS ] of word;

type
    TTRTM_Objects_Set      = array of word;

type
    TTRTM_Object_Analysis   = record
                                obj_id   : word;
                                bobj_ids : TTRTM_Objects_Set;
                                unique   : TTRTM_Methods_Indexes;
                                all      : TTRTM_Methods_Set;
                              end;

implementation


end.





